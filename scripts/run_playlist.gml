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

name[0]="Analyzer // Sidewinder#Timeless"
name[1]="Keisha // Sidewinder#Timeless"
name[2]="Imagine When // Sidewinder#Timeless"
name[3]="Beyond Dreams // Sidewinder#Timeless"
name[4]="Beyond the Game // Sidewinder#Timeless"
name[5]="What Life // Sidewinder#Timeless"
name[6]="Tribelands // Sidewinder#Timeless"
name[7]="Jasmine // Sidewinder#Timeless"
name[8]="Just Like That // Sidewinder#Timeless"

if (global.cursong) {
    if (sound_isplaying(global.cursong)) {
        exit
    }
}

global.cursong=play_bg_music(list[global.playlist],0)

i=instance_create(0,0,SongNamer)
i.text=name[global.playlist]

global.playlist=(global.playlist+irandom_range(1,8)) mod 9
