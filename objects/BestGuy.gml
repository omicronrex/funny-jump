#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
position=FunnyJump.size-1

image_speed=0
image_blend=0

Player.visible=0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
repeat (3) {
    position=max(0,position-1)

    x=ds_list_find_value(FunnyJump.list_x,position)
    y=ds_list_find_value(FunnyJump.list_y,position)
    sprite_index=ds_list_find_value(FunnyJump.list_s,position)
    image_index=ds_list_find_value(FunnyJump.list_i,position)
    image_xscale=ds_list_find_value(FunnyJump.list_w,position)

    if (ds_list_find_value(FunnyJump.list_j,position)) {
        with (instance_nearest(x-16,y+16,Block)) {
            if (distance_to_object(SavePointHard)>=64) {
                instance_create(x,y-32,SavePointHard)
            }
        }
    }

    move_player(x,y-0.4,0)
    Player.facing=image_xscale
    Player.image_xscale=image_xscale

    instance_create(x,y,Collider)
}

if (position=0) {
    with (FunnyWarp) {
        active=0
    }

    with (PerfectCell) instance_destroy()

    with (SavePoint) {
        with (PlayerKiller) {
            if (place_meeting(x,y,other.id)) {
                instance_destroy()
            }
        }
    }

    with (FunnyWarp) {
        instance_change(Warp,0)
    }

    Player.visible=1
    instance_destroy()
}
#define Collision_PlayerKiller
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=other
invert=0
*/
