file(GLOB_RECURSE USER_SOURCES
        ${CMAKE_CURRENT_LIST_DIR}/src/*.c
        ${CMAKE_CURRENT_LIST_DIR}/src/*.cc
        ${CMAKE_CURRENT_LIST_DIR}/src/*.cpp
        ${CMAKE_CURRENT_LIST_DIR}/src/*.s
        ${CMAKE_CURRENT_LIST_DIR}/src/*.S)

target_sources(${CMAKE_PROJECT_NAME} PRIVATE
        ${USER_SOURCES}
)
target_include_directories(stm32cubemx INTERFACE
        ${CMAKE_CURRENT_LIST_DIR}/inc
)
