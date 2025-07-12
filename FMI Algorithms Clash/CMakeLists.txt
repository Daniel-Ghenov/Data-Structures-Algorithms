cmake_minimum_required(VERSION 3.26)
project(FMI_Algorithms_Clash)

set(CMAKE_CXX_STANDARD 14)

add_executable(FMI_Algorithms_Clash
        task.cpp
        generateInputs.cpp
        generateInputs.h)
