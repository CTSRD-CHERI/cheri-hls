set(CMAKE_BUILD_TYPE Debug)

add_library(HLSExtract 
  MODULE 
  ExtractInterface.cpp
)

SET(CMAKE_CXX_FLAGS "-fopenmp -fno-rtti -fPIC")
