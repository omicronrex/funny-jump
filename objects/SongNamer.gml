#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alpha=0
image_alpha=0
go=1

sin_i = 0;
sin_s = 0.1;

alarm[0]=250
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
go=0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (go) alpha=min(1,alpha+0.05)
else {
    alpha=max(0,alpha-0.05)
    if (alpha==0) instance_destroy()
}
#define Step_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sin_i += sin_s;
#define Trigger_Draw GUI
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
dx=800-40
dy=40

draw_set_alpha(alpha)
draw_set_font(fntSignpost)
draw_set_halign(2)
draw_set_color(0)
draw_text(dx-1,dy-1,text)
draw_text(dx+1,dy-1,text)
draw_text(dx-1,dy+1,text)
draw_text(dx+1,dy+1,text)
draw_set_color($ffffff)
draw_text(dx,dy,text)
draw_sprite_ext(sprMusicNote,0,dx-20-string_width(text)+2,dy+10+2,0.5,0.5,sin(sin_i)*20,0,alpha/2)
draw_sprite_ext(sprMusicNote,0,dx-20-string_width(text),dy+10,0.5,0.5,sin(sin_i)*20,image_blend,alpha)
draw_set_halign(0)
draw_set_alpha(1)
