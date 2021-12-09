#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
active=0

roomTo=rmClear
warpX=noone
warpY=noone
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (active) {
    move_player((Player.x*19+x+16)/20,(Player.y*19+y+16)/20,0)
    Player.speed=0
}
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (!active) {
    lock_controls()
    FunnyJump.go=1
    active=1
}
