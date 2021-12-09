#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
go=0

timer=0
record=0
done=0

if (load_funny_jump()) {
    done=1
    exit
}

play_bg_music("guyrock",1)

global.playlist=irandom(8)
global.cursong=-1

size=0
maxsize=800

jumped=0
record=1

px=-1
py=-1

list_x=ds_list_create()
list_y=ds_list_create()
list_s=ds_list_create()
list_i=ds_list_create()
list_w=ds_list_create()
list_j=ds_list_create()
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var a,k,t;

t=current_time

if (go && !done) {
    k=1/3

    if (timer==0) {
        sound_play("thx")
        for (u=32;u<800-32;u+=32) for (v=32;v<608-32;v+=32) {
            if (!place_meeting(u,v,Block) && !place_meeting(u,v,FunnyWarp))
                instance_create(u,v,PerfectCell)
        }
    }
    if (timer<=200) {
        a=timer/200
        with (PerfectCell) {
            image_alpha=a
        }
        with (Block) {
            image_alpha=a
        }
        Player.image_blend=merge_color($ffffff,0,timer/200)
    }

    if (timer=200) {
        background_color=$40
        instance_create(400,304,Supernova)
        with (PlayerKiller) {
            image_blend=0
        }
        instance_create(Player.x,Player.y,BestGuy)
    }

    if (timer>200 && timer<=200+size*k) {
        with (PlayerKiller) {
            image_blend=0
        }
        with (SavePoint) {
            image_blend=0
        }
    }

    if (timer>200+size*k && timer<=400+size*k) {
        if (!instance_exists(BlockEffector)) {
            instance_create(0,0,BlockEffector)
            BlockEffector.alpha=0
        }
        a=(timer-(200+size*k))/200
        with (PlayerKiller) {
            image_blend=merge_color(0,make_color_hsv((((x+y)*20+t)/50) mod 255,150,200),a)
        }
        a=merge_color(0,$ffffff,a)
        with (SavePoint) {
            image_blend=a
        }
    }
    if (timer>=400+size*k) {
        save_funny_jump()
        unlock_controls()
        done=1
    }
    timer+=1
}

if (record) if (instance_exists(Player)) {
    if ((Player.x!=px || Player.y!=py) && timer<50) {
        px=Player.x
        py=Player.y
        ds_list_add(list_x,px)
        ds_list_add(list_y,py)
        ds_list_add(list_s,Player.sprite_index)
        ds_list_add(list_i,Player.image_index)
        ds_list_add(list_w,Player.image_xscale)
        ds_list_add(list_j,jumped) jumped=0
        size+=1
        if (size>maxsize) kill_player()
    }
}

if (done) {
    with (PlayerKiller) {
        image_blend=make_color_hsv((((x+y)*20+t)/50) mod 255,150,200)
    }
    run_playlist()
} else {
    SavePoint.notice=0
}
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (record) {
    ds_list_destroy(list_x)
    ds_list_destroy(list_y)
    ds_list_destroy(list_s)
    ds_list_destroy(list_i)
    ds_list_destroy(list_w)
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (!go && instance_exists(Player) && record) draw_healthbar(Player.x-32,Player.y-32,Player.x+32,Player.y-24,100-100*(size/maxsize),0,$ff,$ff00,0,1,1)
