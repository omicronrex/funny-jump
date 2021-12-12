var r,s,tmp,b,size,ext;

if (argument_count) fn=argument[0]
else fn=get_open_filename("Funny Jump level|*.fj.png","")

if (file_exists(fn)) {
    b=buffer_create()
    buffer_load(b,fn)

    size=buffer_get_size(b)
    buffer_set_pos(b,size-4)
    if (buffer_read_u32(b)!=1234321) {
        anchor=-1
    } else {
        buffer_set_pos(b,size-8)
        anchor=buffer_read_u32(b)
    }

    if (anchor>0 && anchor<size) {
        b2=buffer_create()
        buffer_copy_part(b2,b,anchor,size-8-anchor)
        buffer_destroy(b)

        buffer_set_pos(b2,0)
        buffer_inflate(b2)
        buffer_set_pos(b2,0)
        r=buffer_read_u16(b2)
        data=buffer_read_string(b2)
        buffer_destroy(b2)

        savedata(room_get_name(r)+"_funnyjump",data)
        savedata(room_get_name(r)+"_hasfunnyjump",1)

        show_message("Stage "+string_digits(room_get_name(r))+" was loaded.")

        with (SaveLayout) if (type=r) y=ystart
        with (ClearLayout) if (type=r) y=ystart
        return 1
    } else {
        buffer_destroy(b)
        return 0
    }
}
