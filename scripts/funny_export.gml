var r,s,tmp,b,size;

r=argument0
tmp=temp_directory+"\temp.png"

if (savedata(room_get_name(r)+"_hasfunnyjump")) {
    fn=get_save_filename("Funny Jump level|*.fj.png","jump.fj.png")
    if (fn!="") {
        s=surface_engage(-1,192,146)
        draw_clear($c0c0c0)
        draw_text(10,10,"I Wanna Do The#Funny Jump##Level File v1.1")
        draw_make_opaque()
        surface_disengage()
        surface_save(s,tmp)
        surface_free(s)
        sleep(100)

        b2=buffer_create()
        buffer_write_string(b2,savedata(room_get_name(r)+"_funnyjump"))
        buffer_deflate(b2)

        b=buffer_create()
        buffer_load(b,tmp)
        size=buffer_get_size(b)
        buffer_set_pos(b,size)
        buffer_copy(b,b2)
        buffer_set_pos(b,buffer_get_size(b))
        buffer_write_u32(b,size)

        buffer_save(b,filename_change_ext(filename_remove_ext(fn),".fj.png"))
        buffer_destroy(b)
        buffer_destroy(b2)
    }
}
