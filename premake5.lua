-- frozen

project "frozen"
  kind "None"
  language "C++"
  cppdialect "C++17"
  systemversion "latest"

  targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
  objdir ("%{wks.location}/build/" .. outputdir .. "%{prj.name}")

  IncludeDir["frozen"] = "%{wks.location}/libs/frozen/include"

  includedirs {}

  files {
    "premake5.lua",
    "include/**.hpp",
    "include/**.h",
  }