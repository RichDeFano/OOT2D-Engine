///@func pal_swap_init_system(shader)
function pal_swap_init_system(_shader) {

	//Initiates the palette system.  Call once at the beginning of your game somewhere.
	//shader assets
	var _swapper = {
  	shader: noone,
  	texel_size: [0],
  	uvs: [0],
  	index: [0],
  	texture: [0],
  	layer_priority: 0,
  	layer_temp_priority: 0,
  	layer_map: 0,
	
  	cleanup: function() {
  		ds_priority_destroy(layer_priority);
  		ds_priority_destroy(layer_temp_priority);
  		ds_map_destroy(layer_map);
  	}
  }
	_swapper.shader = _shader;
	_swapper.texel_size[0] = shader_get_uniform(_shader, "u_pixelSize");
	_swapper.uvs[0] = shader_get_uniform(_shader, "u_Uvs");
	_swapper.index[0] = shader_get_uniform(_shader, "u_paletteId");
	_swapper.texture[0] = shader_get_sampler_index(_shader, "u_palTexture");

	_swapper.layer_priority = ds_priority_create();
	_swapper.layer_temp_priority = ds_priority_create();
	_swapper.layer_map = ds_map_create();
	
	global.retro_pal_swapper = _swapper;
}
	
///@func pal_swap_set(palette_sprite_index, palette_index, palette is surface);
function pal_swap_set(_pal_sprite, _pal_index, _is_surface) {
	
	var _swapper = global.retro_pal_swapper;
	if(_pal_index == 0) exit;

	var _mode = 0;
	
	if(!_is_surface) {   
		shader_set(_swapper.shader);

		var _tex = sprite_get_texture(_pal_sprite, 0),
			_UVs = sprite_get_uvs(_pal_sprite, 0);
	  texture_set_stage(_swapper.texture[_mode], _tex);
    
	  var _texel_x = texture_get_texel_width(_tex),
	      _texel_y = texture_get_texel_height(_tex),
	      _texel_hx = _texel_x * 0.5,
	      _texel_hy = _texel_y * 0.5;
    
	  shader_set_uniform_f(_swapper.texel_size[_mode], _texel_x, _texel_y);
	  shader_set_uniform_f(_swapper.uvs[_mode], _UVs[0] + _texel_hx, _UVs[1] + _texel_hy, _UVs[2], _UVs[3]);
	  shader_set_uniform_f(_swapper.index[_mode], _pal_index);
	} else {   
		shader_set(_swapper.shader);
    
		var _tex = surface_get_texture(_pal_sprite);
    
	  texture_set_stage(_swapper.texture[_mode], _tex);
    
	  var _texel_x = texture_get_texel_width(_tex),
	      _texel_y = texture_get_texel_height(_tex),
	      _texel_hx = _texel_x * 0.5,
	      _texel_hy = _texel_y * 0.5;
		shader_set_uniform_f(_swapper.texel_size[_mode], _texel_x, _texel_y);
	  shader_set_uniform_f(_swapper.uvs[_mode], _texel_hx, _texel_hy, 1.0 + _texel_hx, 1.0 + _texel_hy);
	  shader_set_uniform_f(_swapper.index[_mode], _pal_index);
	}
}

/// @func pal_swap_reset();
function pal_swap_reset() {
	//Resets the shader
	if(shader_current() != -1) shader_reset();
}


///@func pal_swap_layer_init();  
// Should be called once before setting up any layers to pal swap.
function pal_swap_layer_init() {
	ds_map_clear(global.retro_pal_swapper.layer_map);
	ds_priority_clear(global.retro_pal_swapper.layer_priority);
	ds_priority_clear(global.retro_pal_swapper.layer_temp_priority);
}

// @func pal_swap_set_layer(pal_sprite, pal_index, layer_index, pal_is_surface)
//draws the specified layer using the specified palette in the specified event.
function pal_swap_set_layer(_pal_sprite, _pal_index, _layer_index, _pal_is_surface) {
	var _data = ds_map_find_value(global.retro_pal_swapper.layer_map,_layer_index);
	if(_data == undefined) return;  //Swapping not enabled on this layer
  
	global.retro_pal_swapper.layer_map[? _layer_index] = {sprite: _pal_sprite, index: _pal_index, is_surf: _pal_is_surface};
}


///@func pal_swap_enable_layer(layer index)
///   This script sets layer start and end scripts. 
///   This script should not be called in either a step event or a draw event.  
///   It should only be called once.
function pal_swap_enable_layer(_layer_index) {
  if(!layer_exists(_layer_index)) return;

  var _data = {sprite: undefined, index: undefined, is_surf: undefined}

  layer_script_begin(_layer_index,function() {
    if(event_type == ev_draw) {
        var _id = ds_priority_delete_min(global.retro_pal_swapper.layer_priority);
        var _data = global.retro_pal_swapper.layer_map[? _id];
        if(_data == "<undefined>") return;
        
        pal_swap_set(_data.sprite,_data.index,_data.is_surf);
        ds_priority_add(global.retro_pal_swapper.layer_temp_priority,_id,layer_get_depth(_id));
    }
  });    
  layer_script_end(_layer_index,function() {
    if(event_type == ev_draw) {
        pal_swap_reset();
        if(ds_priority_empty(global.retro_pal_swapper.layer_priority))
        {
            ds_priority_copy(global.retro_pal_swapper.layer_priority,global.retro_pal_swapper.layer_temp_priority);
            ds_priority_clear(global.retro_pal_swapper.layer_temp_priority);
        }
    }
  });

  global.retro_pal_swapper.layer_map[? _layer_index] = _data;
  ds_priority_add(global.retro_pal_swapper.layer_priority,_layer_index,layer_get_depth(_layer_index));
}

