cam_x = 1280;
target_x = 1280;

if (cam != -1 && camer_exists(cam)){
	camera_destroy(cam);
}

cam = camera_create_view(cam_x, 0, 1280, 1080, -1, -1, -1, -1);

view_enabled = true;
view_visible[0] = true;
view_set_camera(0,cam);