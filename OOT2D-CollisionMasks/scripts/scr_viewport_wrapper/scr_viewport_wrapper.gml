function scr_viewport_wrapper(prop, index) {
	var res = -1;

	switch(prop)
	{
	case struct_view.XView: var cam = view_get_camera(index); res = camera_get_view_x(cam); break;
	case struct_view.YView: var cam = view_get_camera(index); res = camera_get_view_y(cam); break;
	case struct_view.WView: var cam = view_get_camera(index); res = camera_get_view_width(cam); break;
	case struct_view.HView: var cam = view_get_camera(index); res = camera_get_view_height(cam); break;
	case struct_view.Angle: var cam = view_get_camera(index); res = camera_get_view_angle(cam); break;
	case struct_view.HBorder: var cam = view_get_camera(index); res = camera_get_view_border_x(cam); break;
	case struct_view.VBorder: var cam = view_get_camera(index); res = camera_get_view_border_y(cam); break;
	case struct_view.HSpeed: var cam = view_get_camera(index); res = camera_get_view_speed_x(cam); break;
	case struct_view.VSpeed: var cam = view_get_camera(index); res = camera_get_view_speed_y(cam); break;
	case struct_view.Object: var cam = view_get_camera(index); res = camera_get_view_target(cam); break;
	case struct_view.Visible: res = view_get_visible(index); break;
	case struct_view.XPort: res = view_get_xport(index); break;
	case struct_view.YPort: res = view_get_yport(index); break;
	case struct_view.WPort: res = view_get_wport(index); break;
	case struct_view.HPort: res = view_get_hport(index); break;
	case struct_view.Camera: res = view_get_camera(index); break;
	case struct_view.SurfaceID: res = view_get_surface_id(index); break;
	default: break;
	};

	return res;


}
