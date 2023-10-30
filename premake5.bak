project "sfml-system"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"

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
		runtime "Debug"
        symbols "on"
	
	filter "configurations:Release"
		defines "NDEBUG"
		runtime "Release"
		optimize "on"

	filter "configurations:Retail"
		defines "NDEBUG"
		runtime "Release"
		optimize "on"

	filter "system:windows"
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
	cppdialect "C++17"
	staticruntime "on"

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
		runtime "Debug"
        symbols "on"
	
	filter "configurations:Release"
		defines "NDEBUG"
		runtime "Release"
		optimize "on"

	filter "configurations:Retail"
		defines "NDEBUG"
		runtime "Release"
		optimize "on"

	filter "system:windows"
		systemversion "latest"

project "sfml-graphics"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"

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
		runtime "Debug"
        symbols "on"
	
	filter "configurations:Release"
		defines "NDEBUG"
		runtime "Release"
		optimize "on"

	filter "configurations:Retail"
		defines "NDEBUG"
		runtime "Release"
		optimize "on"

	filter "system:windows"
		systemversion "latest"

		disablewarnings
        {
			"4996"
        }	

project "sfml-network"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"

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
		runtime "Debug"
        symbols "on"
	
	filter "configurations:Release"
		defines "NDEBUG"
		runtime "Release"
		optimize "on"

	filter "configurations:Retail"
		defines "NDEBUG"
		runtime "Release"
		optimize "on"

	filter "system:windows"
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
	cppdialect "C++17"
	staticruntime "on"

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
		runtime "Debug"
        symbols "on"
	
	filter "configurations:Release"
		defines "NDEBUG"
		runtime "Release"
		optimize "on"

	filter "configurations:Retail"
		defines "NDEBUG"
		runtime "Release"
		optimize "on"

	filter "system:windows"
		systemversion "latest"

		files
		{
			"src/SFML/Window/Win32/**.*",
		}
