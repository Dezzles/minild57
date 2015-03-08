SFML2DIR = "D:/Projects/Libraries/SFML-2.2"

solution "MiniLD57"
	configurations { "Debug", "Release" }
	location "build"


dofile( "bubblewrap/Scripts/bubblewrap.lua" )


-- Build externals.
dofile ("bubblewrap/External/genie.lua")

-- Build engine.
dofile ("bubblewrap/bubblewrap_genie.lua")

-- Build game source.
dofile ("./Source/genie.lua")

