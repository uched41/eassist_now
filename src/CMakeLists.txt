ADD_EXECUTABLE( assistnow main.cpp rs232.c)
include_directories(${CPR_INCLUDE_DIRS})
target_link_libraries(assistnow ${CPR_LIBRARIES})