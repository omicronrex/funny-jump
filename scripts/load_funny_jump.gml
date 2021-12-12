if (savedata(room_get_name(room)+"_hasfunnyjump")) {
    with (PlayerKiller) if (object_index!=CrimsonCherry) instance_destroy()

    var d;d=ds_list_create()
    ds_list_read(d,savedata(room_get_name(room)+"_funnyjump"))
    pos=1
    repeat (ds_list_find_value(d,0)) {
        instance_create(ds_list_find_value(d,pos),ds_list_find_value(d,pos+1),ds_list_find_value(d,pos+2))
        pos+=3
    }
    ds_list_destroy(d)

    with (instance_create(400,304,Supernova)) {
        image_xscale=0.8
        image_yscale=0.8
    }
    background_color=$40

    with (FunnyWarp) {
        instance_change(Warp,0)
    }
    BreakBlock.tile=-1
    instance_destroy_id(BreakBlock)

    instance_create(0,0,BlockEffector)
    BlockEffector.visible=0
    tile_layer_delete(1000)
    tile_layer_delete(1100)

    with (CrimsonCherry) sprite_index=sprCherryWhite
    with (Platform) sprite_index=sprWhitePlat

    return 1
}
return 0
