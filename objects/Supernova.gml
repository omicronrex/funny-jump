#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale=0
image_yscale=0
angle=0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
angle=current_time/200

if (instance_exists(Player)) {
    image_xscale=(image_xscale*199+0.8)/200
    image_yscale=(image_yscale*199+0.8)/200
} else {
    image_xscale=(image_xscale*199+1)/200
    image_yscale=(image_yscale*199+1)/200
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
texture_set_interpolation(1)
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,angle,$ffffff,1)
draw_sprite_ext(sprite_index,0,x,y,image_xscale*0.8,image_yscale*0.8,angle*0.7,$ffffff,0.5)
draw_sprite_ext(sprite_index,0,x,y,image_xscale*0.6,image_yscale*0.6,angle*0.52,$ffffff,0.25)
texture_reset_interpolation()
