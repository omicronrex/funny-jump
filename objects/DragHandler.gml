#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (!savedata("clear")) instance_destroy()
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var fn,count,i;

count=file_drag_count()
if (count) {
    for (i=0;i<count;i+=1) {
        fn=file_drag_name(i)
        if (!funny_import(fn)) show_message("File '"+filename_name(fn)+"' was not recognized!")
    }
    file_drag_clear()
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
file_drag_enable(1)

World.message=300
World.messagetext="Drag stage files onto the game"
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
World.message=-1
file_drag_enable(0)
