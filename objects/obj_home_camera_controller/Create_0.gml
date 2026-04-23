window_set_size(1280, 1080);

display_set_gui_size(1280, 1080);

cam = camera_create_view(0, 0, 1280, 1080, -1, -1, -1, -1);

view_enabled = true;

view_visible[0] = true;

view_set_camera(0, cam);