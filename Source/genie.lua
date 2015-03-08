project "MiniLD57"
	kind "ConsoleApp"
	language "C++"
	files { "**.h", "**.cpp" }
	location ( "../build" )
	targetdir ( "../build/out/" )
	objdir ( "../build/obj" )
	
	includedirs 
	{ 
		"../bubblewrap/include",
		"../bubblewrap/External",
		SFML2DIR .. "/include/"
	}
	links
	{
		"Bubblewrap", 
		"External_Json" ,
		SFML2DIR .. "/lib/sfml-graphics",
		SFML2DIR .. "/lib/sfml-window",
		SFML2DIR .. "/lib/sfml-system",
		SFML2DIR .. "/lib/sfml-audio"

	}
	configuration "Debug"
		defines { "DEBUG" }
		flags { "Symbols" }

	configuration "Release"
		defines { "NDEBUG" }
		flags { "Optimize" }