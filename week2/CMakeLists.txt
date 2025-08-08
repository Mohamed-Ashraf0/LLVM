cmake_minimum_required(VERSION 3.15)
project(MyPass)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

find_package(LLVM REQUIRED CONFIG)

# Windows-specific settings
if(WIN32)
    add_compile_definitions(
        NOMINMAX
        _SILENCE_CXX17_OLD_ALLOCATOR_MEMBERS_DEPRECATION_WARNING
    )
    set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)
endif()

include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})

add_library(MyPass SHARED MyPass.cpp)

llvm_map_components_to_libnames(llvm_libs
    Core
    Support
    Passes
)

target_link_libraries(MyPass PRIVATE ${llvm_libs})

# Additional Windows link flags
if(WIN32)
    target_link_options(MyPass PRIVATE "/SUBSYSTEM:CONSOLE")
endif()