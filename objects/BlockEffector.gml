#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alpha=1

block1=global.savemysurf1
block2=global.savemysurf2
compose=global.savemysurf3

rune1=instance_create(0,0,Runes)
rune2=instance_create(0,0,Runes)

rune1.mytime=0
rune2.mytime=1

with (Block) top=!place_meeting(x,y-16,Block)
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
visible=1
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.savemysurf1=block1
global.savemysurf2=block2
global.savemysurf3=compose
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (!surface_exists(block1)) {
    block1=surface_engage(block1,room_width,room_height)
    draw_clear($ffffff)
    draw_set_blend_mode(bm_subtract)
        with (Block) if (object_index==Block) {
            draw_sprite(sprBrownBlock,1,x,y)
        }
    draw_set_blend_mode(0)
    surface_reset_target()
}
if (!surface_exists(block2)) {
    block2=surface_engage(block2,room_width,room_height)
    draw_clear($ffffff)
    draw_set_blend_mode(bm_subtract)
        with (Block) if (object_index==Block) if (top) {
            draw_sprite(sprGrass,1,x,y)
        }
    draw_set_blend_mode(0)
    surface_reset_target()
}

alpha=min(1,alpha+0.01)
col=merge_color(0,$ffffff,alpha)

compose=surface_engage(compose,800,608)
    with (rune1) if (s!=-1) {
        draw_surface_stretched(s,0,0,800,608)
    }
    draw_set_blend_mode(bm_subtract)
    draw_surface(block1,-view_xview,-view_yview)
    draw_set_blend_mode(0)
surface_disengage()
envelope_prepare()
draw_surface_ext(compose,view_xview,view_yview,1,1,0,col,1)

compose=surface_engage(compose,800,608)
    with (rune2) if (s!=-1) {
        draw_surface_stretched(s,0,0,800,608)
    }
    draw_set_blend_mode(bm_subtract)
    draw_surface(block2,-view_xview,-view_yview)
    draw_set_blend_mode(0)
surface_disengage()
envelope_prepare()
draw_surface_ext(compose,view_xview,view_yview,1,1,0,col,1)
