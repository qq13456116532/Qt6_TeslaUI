# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appTeslaInfotainment_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appTeslaInfotainment_autogen.dir\\ParseCache.txt"
  "appTeslaInfotainment_autogen"
  )
endif()
