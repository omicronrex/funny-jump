var d,r,s,tmp,b,size,data,w,h,rw,rh,spr;

r=argument0
tmp=temp_directory+"\temp.png"
ext=".fj.png"

switch (r) {
    case rmStage1: {spr=sprRoomThumbs1 w=384 h=292 rw=800 rh=608} break
    case rmStage2: {spr=sprRoomThumbs2 w=384 h=292*2 rw=800 rh=608*2} break
    case rmStage3: {spr=sprRoomThumbs3 w=384 h=292 rw=800 rh=608} break
    case rmStage4: {spr=sprRoomThumbs4 w=384 h=292 rw=800 rh=608} break
    case rmStage5: {spr=sprRoomThumbs5 w=384*2 h=292 rw=800*2 rh=608} break
}

if (savedata(room_get_name(r)+"_hasfunnyjump")) {
    fn=get_save_filename("Funny Jump level|*"+ext,"Stage "+string_digits(room_get_name(r)))
    if (fn!="") {
        p=string_pos(".",fn)
        if (p) fn=string_copy(fn,1,p-1)

        fn=filename_change_ext(fn,ext)

        data=savedata(room_get_name(r)+"_funnyjump")

        texture_set_interpolation(1)
        s=surface_engage(-1,w*2,h*2)
            draw_clear_alpha(0,0)
            d3d_set_projection_ortho(0,0,rw,rh,0)

            d=ds_list_create()
            ds_list_read(d,data)
            pos=1
            repeat (ds_list_find_value(d,0)) {
                draw_sprite(object_get_sprite(ds_list_find_value(d,pos+2)),0,ds_list_find_value(d,pos),ds_list_find_value(d,pos+1))
                pos+=3
            }
            ds_list_destroy(d)

        s2=surface_engage(-1,w,h)
            draw_sprite_stretched(spr,0,0,0,w,h)
            draw_surface_stretched(s,0,0,w,h)
            draw_set_font(fntFileSmall)
            draw_text_outline(4,4,"I Wanna Do The Funny Jump v1.1",$ffff)
        surface_disengage()
        surface_free(s)

        draw_make_opaque()
        surface_disengage()
        surface_save(s2,tmp)
        surface_free(s2)
        sleep(100)

        b2=buffer_create()
        buffer_write_u16(b2,r)
        buffer_write_string(b2,data)
        buffer_deflate(b2)

        b=buffer_create()
        buffer_load(b,tmp)
        size=buffer_get_size(b)
        buffer_set_pos(b,size)
        buffer_copy(b,b2)
        buffer_set_pos(b,buffer_get_size(b))
        buffer_write_u32(b,size)
        buffer_write_u32(b,1234321)

        buffer_save(b,fn)
        buffer_destroy(b)
        buffer_destroy(b2)
    }
}
