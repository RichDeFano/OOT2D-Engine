if (obj_Link.boomerang_right == true){x += 6;}
else if (obj_Link.boomerang_left == true){x -= 6;}
else if (obj_Link.boomerang_up == true){y -= 6;}
else if (obj_Link.boomerang_down == true){y += 6;}

else if (obj_Link.boomerang_up_right == true)
{
x += 6;
y -= 6;
}

else if (obj_Link.boomerang_up_left == true)
{
x -= 6;
y -= 6;
}

else if (obj_Link.boomerang_down_right == true)
{
x += 6;
y += 6;
}

else if (obj_Link.boomerang_down_left == true)
{
y += 6;
x -= 6;
}


