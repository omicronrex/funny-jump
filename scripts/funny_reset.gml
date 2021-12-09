if (surface_exists(global.savemysurf1)) surface_free(global.savemysurf1)
if (surface_exists(global.savemysurf2)) surface_free(global.savemysurf2)
if (surface_exists(global.savemysurf3)) surface_free(global.savemysurf3)

global.savemysurf1=-1
global.savemysurf2=-1
global.savemysurf3=-1

global.playlist=irandom(8)
global.cursong=-1
