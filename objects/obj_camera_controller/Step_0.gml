if (cam_x < target_x){
	cam_x=min(cam_x + move_speed, target_x);
}
else if (cam_x > target_x){
	cam_x = max(cam_x - move_speed, target_x);
}

camera_set_view_pos(view_camera[0], cam_x, 0);