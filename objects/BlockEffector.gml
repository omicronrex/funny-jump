#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alpha=1
s=global.savemysurf3
block1=global.savemysurf1
block2=global.savemysurf2

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
global.savemysurf3=s
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (!surface_exists(block1)) {
    block1=surface_engage(block1,800,608)
    draw_clear($ffffff)
    draw_set_blend_mode(bm_subtract)
        with (Block) {
            draw_sprite(sprBrownBlock,1,x,y)
        }
    draw_set_blend_mode(0)
    surface_reset_target()
}
if (!surface_exists(block2)) {
    block2=surface_engage(block2,800,608)
    draw_clear($ffffff)
    draw_set_blend_mode(bm_subtract)
        with (Block) if (top) {
            draw_sprite(sprGrass,1,x,y)
        }
    draw_set_blend_mode(0)
    surface_reset_target()
}

alpha=min(1,alpha+0.01)
col=merge_color(0,$ffffff,alpha)

s=surface_engage(s,800,608)
    with (rune1) if (s!=-1) {
        draw_surface_stretched(s,view_xview[0],view_yview[0],800,608)
    }
    draw_set_blend_mode(bm_subtract)
    draw_surface(block1,0,0)
    draw_set_blend_mode(0)
surface_disengage()
envelope_prepare()
draw_surface_ext(s,0,0,1,1,0,col,1)

s=surface_engage(s,800,608)
    with (rune2) if (s!=-1) {
        draw_surface_stretched(s,view_xview[0],view_yview[0],800,608)
    }
    draw_set_blend_mode(bm_subtract)
    draw_surface(block2,0,0)
    draw_set_blend_mode(0)
surface_disengage()
envelope_prepare()
draw_surface_ext(s,0,0,1,1,0,col,1)
