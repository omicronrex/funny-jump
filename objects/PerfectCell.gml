#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_blend=0
image_alpha=0
marked=0
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (FunnyWarp.active) {
    with (instance_place(x,y+32,PerfectCell)) marked=1
    with (instance_place(x,y-32,PerfectCell)) marked=1
    with (instance_place(x-32,y,PerfectCell)) marked=1
    with (instance_place(x+32,y,PerfectCell)) marked=1
}
if (FunnyWarp.active || marked) {
    instance_create(x,y,SpikeD)
    instance_create(x,y,SpikeU)
    instance_create(x,y,SpikeL)
    instance_create(x,y,SpikeR)
} else instance_create(x,y,Faker)
