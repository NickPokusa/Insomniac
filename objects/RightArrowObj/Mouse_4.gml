//MOVE CAMERA RIGHT
//tell the camera controller to shift to the next panel
with (obj_camera_controller){
	
	//only move if the camera is not already moving and not
	//already at the far right position
	if(cam_x == target_x && target_x < 2560){
		target_x += 1280;
	}
}
