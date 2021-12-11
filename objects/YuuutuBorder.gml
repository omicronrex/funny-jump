#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// draw border

// row drawing
for (i=1; i<(room_width/32)-1; i+=1) {
    tile_add(tile_IWBTG, 32, 0, 32, 32, i*32, 0, mil) // bricks on top
    tile_add(tile_IWBTG, 0, 0, 32, 32, i*32, room_height-32, mil) // grass on bottom
}

// column drawing
for (i=0; i<(room_height/32); i+=1) {
    tile_add(tile_IWBTG, 32, 0, 32, 32, 0, i*32, mil) // left
    tile_add(tile_IWBTG, 32, 0, 32, 32, room_width-32, i*32, mil) // right
}

instance_destroy()
