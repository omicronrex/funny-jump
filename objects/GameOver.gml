#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale=1/camera_zoom()
image_yscale=image_xscale

alarm[0]=40/dt
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
visible=1

instance_create(0,0,SupernovaFader)
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_angle=-view_angle
x=view_xcenter
y=view_ycenter

if (instance_exists(Supernova)) draw_set_blend_mode_ext(10,1)
d3d_start()
draw_self()
d3d_end()
draw_set_blend_mode(0)
