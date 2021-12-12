#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (!savedata("clear")) instance_destroy()
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
texture_set_interpolation(1)
draw_sprite_ext(sprite,0,x,y,scale,scale,0,$ffffff,1)
texture_set_interpolation(0)
