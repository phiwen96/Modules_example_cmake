cmake_minimum_required(VERSION 3.16)
project(main)

# SET (CMAKE_CXX_COMPILER             "/usr/bin/clang++")
# SET (CMAKE_CXX_FLAGS                "-Wall")
# SET (CMAKE_CXX_FLAGS_DEBUG          "-g")
#     SET (CMAKE_CXX_FLAGS_MINSIZEREL     "-Os -DNDEBUG")
#     SET (CMAKE_CXX_FLAGS_RELEASE        "-O4 -DNDEBUG")
#     SET (CMAKE_CXX_FLAGS_RELWITHDEBINFO "-O2 -g")

message(${CMAKE_CXX_COMPILER})
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(PREBUILT_MODULE_PATH ${CMAKE_BINARY_DIR}/modules)



# function(add_module name)
#     file(MAKE_DIRECTORY ${PREBUILT_MODULE_PATH})
#     add_custom_target(${name}.pcm
#             COMMAND
#             clang++
#                 # ${CMAKE_CXX_COMPILER}
#                 -std=c++2a
#                 -fmodules-ts
#                 --precompile
#                 ${CMAKE_CURRENT_SOURCE_DIR}/${name}.cpp
#                 # -c
#                 # ${CMAKE_CURRENT_SOURCE_DIR}/${ARGN}
#                 # -Xclang -emit-module-interface
#                 -o ${PREBUILT_MODULE_PATH}/${name}.pcm

#             )
# endfunction()

function(add_module name)
    add_custom_target(${name}.pcm
            COMMAND
                ${CMAKE_CXX_COMPILER}
                -std=c++2a
                # -std=c++20
                -stdlib=libc++
                -fmodules
                -c
                ${CMAKE_CURRENT_SOURCE_DIR}/${ARGN}
                -Xclang -emit-module-interface
                -o ${PREBUILT_MODULE_PATH}/${name}.pcm
            )
            add_dependencies(${PROJECT_NAME} ${name}.pcm)
endfunction()

add_compile_options(-fmodules)
add_compile_options(-stdlib=libc++)
add_compile_options(-fbuiltin-module-map)
add_compile_options(-fimplicit-module-maps)
add_compile_options(-fprebuilt-module-path=${PREBUILT_MODULE_PATH})

file(GLOB MODULES modules/*.cpp)

file(MAKE_DIRECTORY ${PREBUILT_MODULE_PATH})
# add_module(helloworld ${MODULES})
# add_executable(main
#         main.cpp
#         ${MODULES}
#         )
# add_dependencies(main "modules/helloworld.pcm")
add_executable(main
        main.cpp
        ${MODULES}
)
        # add_module(helloworld modules/helloworld.cpp)

foreach(modfile ${MODULES})
    get_filename_component(barename ${modfile} NAME)
    get_filename_component (barename_we ${barename} NAME_WE)
    add_module(${barename_we} modules/${barename})
endforeach(modfile ${MODULES})





# add_dependencies(main helloworld.pcm)