project "sfml-system"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")	

	links
	{
		"winmm",
	}

	files
	{
		"",		
		"src/SFML/System/*.*",
		"include/SFML/*.*",
		"include/SFML/System/*.*",
	}
	
	includedirs
	{
		"include",
		"src",
--		"include/**.*",
--		"include/SFML/System/**.*",
	}
	
	defines
	{
		"SFML_SYSTEM_EXPORTS",
		"SFML_STATIC"
	}

    filter "configurations:Debug"
		defines "DEBUG"
        symbols "On"
	
	filter "configurations:Release"
		defines "NDEBUG"
		optimize "On"

	filter "configurations:Retail"
		defines "NDEBUG"
		optimize "On"

	filter "system:windows"
		cppdialect "C++17"
		staticruntime "On"
		systemversion "latest"

		files
		{
			"src/SFML/System/Win32/**.*",
			"include/SFML/System/Win32/**.*",
		}

		disablewarnings
        {
			"4996"
        }	

project "sfml-audio"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	links
	{
		"sfml-system"
	}

	files
	{
		"src/SFML/Audio/**.*",
		"include/SFML/Audio/**.*",
	}

	includedirs
	{
		"include",
		"src",
		"extlibs/headers",
		"extlibs/headers/AL",
		"extlibs/headers/minimp3",
		"extlibs/headers/vorbis",
	}

	defines
	{
		"SFML_AUDIO_EXPORTS",
		"SFML_STATIC"
	}

    filter "configurations:Debug"
		defines "DEBUG"
        symbols "On"
	
	filter "configurations:Release"
		defines "NDEBUG"
		optimize "On"

	filter "configurations:Retail"
		defines "NDEBUG"
		optimize "On"

	filter "system:windows"
		cppdialect "C++17"
		staticruntime "On"
		systemversion "latest"

project "sfml-graphics"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")	

	links
	{
		"sfml-system",
		"sfml-window"
	}

	files
	{
		"src/SFML/Graphics/**.*",
--		"include/SFML/*.*",
		"include/SFML/Graphics/**.*"
	}

	includedirs
	{
		"include",
		"src",
		"extlibs/headers/glad/include",
		"extlibs/headers/freetype2",
		"extlibs/headers/stb_image",
	}

	defines
	{
		"SFML_GRAPHICS_EXPORTS",
		"SFML_STATIC"
	}

    filter "configurations:Debug"
		defines "DEBUG"
        symbols "On"
	
	filter "configurations:Release"
		defines "NDEBUG"
		optimize "On"

	filter "configurations:Retail"
		defines "NDEBUG"
		optimize "On"

	filter "system:windows"
		cppdialect "C++17"
		staticruntime "On"
		systemversion "latest"

		disablewarnings
        {
			"4996"
        }	

project "sfml-main"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")	

	includedirs
	{
		"include",
	}	

    filter "configurations:Debug"
		defines "DEBUG"
        symbols "On"
	
	filter "configurations:Release"
		defines "NDEBUG"
		optimize "On"

	filter "configurations:Retail"
		defines "NDEBUG"
		optimize "On"

	filter "system:windows"
		cppdialect "C++17"
		staticruntime "On"
		systemversion "latest"

		files
		{
			"src/SFML/Main/MainWin32.cpp",
		}

		disablewarnings
        {
			"4068"
        }

		postbuildcommands
        {
            ("{COPY} %{cfg.buildtarget.relpath} ../bin/" .. outputdir .. "/Fortress")
        }



project "sfml-network"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")	

	links
	{
		"sfml-system",
	}

	files
	{
		"src/SFML/Network/*.*",
		"include/SFML/Network/**.*",
	}
	
	includedirs
	{
		"include",
		"src",
	}	

	defines
	{
		"SFML_NETWORK_EXPORTS",
		"SFML_STATIC"
	}

    filter "configurations:Debug"
		defines "DEBUG"
        symbols "On"
	
	filter "configurations:Release"
		defines "NDEBUG"
		optimize "On"

	filter "configurations:Retail"
		defines "NDEBUG"
		optimize "On"

	filter "system:windows"
		cppdialect "C++17"
		staticruntime "On"
		systemversion "latest"

		files
		{
			"src/SFML/Network/Win32/**.*",
		}

		disablewarnings
        {
            "4068",
			"4996"
        }

project "sfml-window"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")	

	files
	{
		"",		
		"src/SFML/Window/*.*",
		"include/SFML/*.*",
		"include/SFML/Window/*.*",
	}
	
	includedirs
	{
		"include",
		"src",
		"extlibs/headers/glad/include",
		"extlibs/headers/vulkan"
	}

	defines
	{
		"SFML_WINDOW_EXPORTS",
		"SFML_STATIC"
	}

    filter "configurations:Debug"
		defines "DEBUG"
        symbols "On"
	
	filter "configurations:Release"
		defines "NDEBUG"
		optimize "On"

	filter "configurations:Retail"
		defines "NDEBUG"
		optimize "On"

	filter "system:windows"
		cppdialect "C++17"
		staticruntime "On"
		systemversion "latest"

		files
		{
			"src/SFML/Window/Win32/**.*",
		}
