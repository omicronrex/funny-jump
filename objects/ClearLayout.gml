#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=0

if (!savedata("clear")) instance_destroy()
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
savedata(room_get_name(type)+"_funnyjump","")
savedata(room_get_name(type)+"_hasfunnyjump",0)

with (SaveLayout) if (type==other.type) y=-9999
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_index=0
y=-9999
#define Collision_Bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (image_index=0) {
    event_user(0)
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
type=(instance_nearest(x,y,Warp)).roomTo

if (!savedata(room_get_name(type)+"_hasfunnyjump")) y=-9999
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_index=1
alarm[0]=1
alarm[1]=50
sound_play("sndSave")

instance_destroy_id(Bullet)
