//SMOOTH CAMERA MOVEMENT
//move camera toward the target position
if (cam_x < target_x){
	cam_x=min(cam_x + move_speed, target_x);
}
else if (cam_x > target_x){
	cam_x = max(cam_x - move_speed, target_x);
}

//APPLY CAMERA POSITION
//update the camera view to the new position
camera_set_view_pos(cam, cam_x, 0);