var d;d=ds_list_create()
ds_list_add(d,instance_number(PlayerKiller)+instance_number(SavePoint))
with (PlayerKiller) {
    ds_list_add(d,x)
    ds_list_add(d,y)
    ds_list_add(d,object_index)
}
with (SavePoint) {
    ds_list_add(d,x)
    ds_list_add(d,y)
    ds_list_add(d,object_index)
}
savedata("hasfunnyjump",true)
savedata("funnyjump",ds_list_write(d))
ds_list_destroy(d)
