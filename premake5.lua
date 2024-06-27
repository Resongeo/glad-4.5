project "GLAD"
	kind "StaticLib"
	language "C"
	staticruntime "off"
	warnings "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"glad.c",
	}

    includedirs
    {
        "include/",
    }

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
    filter ""

	filter "configurations:Release"
		runtime "Release"
		optimize "Speed"
    filter ""
