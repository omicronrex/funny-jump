#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/15;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (!place_free(x+hspeed,y)) {
    hspeed = -hspeed;
}

if (!place_free(x,y+vspeed)) {
    vspeed = -vspeed;
}
