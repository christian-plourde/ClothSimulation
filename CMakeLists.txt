#When using this template, all you need to do is change the name of the project (the second line)

cmake_minimum_required(VERSION 3.3)
project(ClothSimulation)

find_package(OpenGL REQUIRED)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES main.cpp utils/Vec3.cpp utils/Particle.cpp utils/Constraint.cpp utils/Cloth.cpp utils/Ghost.cpp)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/GLM/glm)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/GLFW/include)
find_library(GLFW_LIBRARIES NAMES glfw3 PATHS "${CMAKE_CURRENT_SOURCE_DIR}/GLFW/lib-mingw-w64")

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/GLEW/include/GL)
find_library(GLEW_LIBRARIES NAMES glew32 PATHS "${CMAKE_CURRENT_SOURCE_DIR}/GLEW/lib")

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/GLUT/GL)
find_library(GLUT_LIBRARIES NAMES freeglut PATHS "${CMAKE_CURRENT_SOURCE_DIR}/GLUT/lib")

include_directories("include")

add_executable(${CMAKE_PROJECT_NAME} ${SOURCE_FILES})

add_library(Ghost SHARED ${SOURCE_FILES})

# Linking GLFW and OGL
target_link_libraries(${CMAKE_PROJECT_NAME} ${OPENGL_LIBRARY} ${GLEW_LIBRARIES} ${GLFW_LIBRARIES} ${GLUT_LIBRARIES})
target_link_libraries(Ghost ${OPENGL_LIBRARY} ${GLEW_LIBRARIES} ${GLFW_LIBRARIES} ${GLUT_LIBRARIES})