//save if you shoot and are intersecting a save block
//(and contact saves aren't being used)
if (!global.contact_saves) {
    with (SavePoint) {
        if (place_meeting(x,y,other.id)) {
            event_user(0)
        }
    }
}

script_execute(global.player_weapon)

with (SaveLayout) {
    if (place_meeting(x,y,other.id)) {
        event_user(0)
    }
}
with (LoadLayout) {
    if (place_meeting(x,y,other.id)) {
        event_user(0)
    }
}
