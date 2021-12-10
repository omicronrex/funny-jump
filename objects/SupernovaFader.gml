#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alpha=0
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alpha=min(0.6,alpha+0.005)

with (Supernova) {
    rect(0,0,room_width,room_height,background_color,other.alpha)
    texture_set_interpolation(1)
    draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,angle,$ffffff,other.alpha)
    draw_sprite_ext(sprite_index,0,x,y,image_xscale*0.8,image_yscale*0.8,angle*0.7,$ffffff,other.alpha*0.5)
    draw_sprite_ext(sprite_index,0,x,y,image_xscale*0.6,image_yscale*0.6,angle*0.52,$ffffff,other.alpha*0.25)
    texture_reset_interpolation()
}
