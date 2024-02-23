cmake_minimum_required(VERSION 3.22)

project(my_project VERSION 0.1
        DESCRIPTION "My Fortran program"
        LANGUAGES Fortran C)

set(CMAKE_INSTALL_MESSAGE LAZY)

get_filename_component (Fortran_COMPILER_NAME ${CMAKE_Fortran_COMPILER} NAME)
if (Fortran_COMPILER_NAME MATCHES "gfortran.*")
  set (CMAKE_Fortran_FLAGS "<gfortran flags go here>")
elseif (Fortran_COMPILER_NAME MATCHES "ifort.*")
  set (CMAKE_Fortran_FLAGS "<Intel flags go here>")
endif()

add_executable(main main.f90)

add_library(shared_mods functions.f90)

target_link_libraries(main shared_mods)

install(TARGETS main  DESTINATION .)
