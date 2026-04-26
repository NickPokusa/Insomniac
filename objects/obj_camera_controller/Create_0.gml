//CAMERA POSITION
//start camera centered in the middle panel(1280 offset ina 3840 room)
cam_x = 1280;
target_x = 1280;

//CAMERA MOVEMENT
//controls how fast the camera moves between panels
move_speed = 40;

//CREATE CAMERA
//create a camera view with 1280x1080 dimentions
cam = camera_create_view(cam_x, 0, 1280, 1080, -1, -1, -1, -1);

//ENABLE VIEW SYSTEMS
view_enabled = true;
view_visible[0] = true;

//assign this camera to the firt viewpoint
view_set_camera(0, cam);