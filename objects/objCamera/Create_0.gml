///@description? Setup Camera
camera = view_camera[0];
follow = objPlayer;

//center camera view
viewWidthHalf = camera_get_view_width(camera) * 0.5;
viewHeightHalf = camera_get_view_height(camera) * 0.5;
xTo = xstart;
yTo = ystart;