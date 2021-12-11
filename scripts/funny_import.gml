var r,s,tmp,b,size;
/*
r=argument0
tmp=temp_directory+"\temp.png"

if (savedata(room_get_name(r)+"_hasfunnyjump")) {
    fn=get_save_filename("Funny Jump level|*.fj.png","jump.fj.png")
    if (fn!="") {
        s=surface_engage(-1,192,146)

        draw_background(bgMegaman,0,0)
        surface_save(s,tmp)
        surface_free(s)

        b=buffer_create()
        buffer_load(b,tmp)
        size=buffer_get_size(b)
        buffer_write_string(b,savedata(room_get_name(r)+"_funnyjump"))
        buffer_write_u32(b,size)

        buffer_save(b,filename_change_ext(fn,".fj.png"))
        buffer_destroy(b)
    }
}
