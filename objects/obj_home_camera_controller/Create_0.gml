//WINDOW SETUP
//set game window to match design resolution
window_set_size(1280, 1080);

//ensure GUI elements scale correctly
display_set_gui_size(1280, 1080);

//CREATE STATIC CAMERA
//create a camera fixed at the top-left of the screen
cam = camera_create_view(0, 0, 1280, 1080, -1, -1, -1, -1);

//ENABLE VIEW SYSTEM
view_enabled = true;
view_visible[0] = true;

//assign camera to viewport
view_set_camera(0, cam);