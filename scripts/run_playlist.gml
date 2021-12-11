if (settings("musvol")==0) exit
if (sound_isplaying("thx")) exit

list[0]="Sidewinder___Timeless___01_Analyzer"
list[1]="Sidewinder___Timeless___02_Keisha"
list[2]="Sidewinder___Timeless___03_Imagine_When"
list[3]="Sidewinder___Timeless___04_Beyond_Dreams"
list[4]="Sidewinder___Timeless___06_Beyond_the_Game"
list[5]="Sidewinder___Timeless___08_What_Life"
list[6]="Sidewinder___Timeless___10_Tribelands"
list[7]="Sidewinder___Timeless___17_Jasmine"
list[8]="Sidewinder___Timeless___19_Just_Like_That"
list[9]="Sidewinder___Wonderfull___01_Wonderfull"

name[0]="Analyzer"
name[1]="Keisha"
name[2]="Imagine When"
name[3]="Beyond Dreams"
name[4]="Beyond the Game"
name[5]="What Life"
name[6]="Tribelands"
name[7]="Jasmine"
name[8]="Just Like That"
name[9]="Wonderfull"

if (global.cursong) {
    if (sound_isplaying(global.cursong)) {
        exit
    }
}

global.cursong=play_bg_music(list[global.playlist],0)

i=instance_create(0,0,SongNamer)
i.text=name[global.playlist]

global.playlist=(global.playlist+irandom_range(1,8)) mod 10
