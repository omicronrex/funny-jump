#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alpha=0
go=1
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
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
dx=800-40
dy=40

draw_set_alpha(alpha)
draw_set_halign(2)
draw_set_color(0)
draw_text(dx-1,dy-1,text)
draw_text(dx+1,dy-1,text)
draw_text(dx-1,dy+1,text)
draw_text(dx+1,dy+1,text)
draw_set_color($ffff)
draw_text(dx,dy,text)
draw_set_color($ffffff)
draw_set_halign(0)
draw_set_alpha(1)
