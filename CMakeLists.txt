cmake_minimum_required(VERSION 3.10.0)
project(Clicker VERSION 0.1.0 LANGUAGES C CXX)

find_package(SFML 2.6.1 COMPONENTS graphics window system REQUIRED)

add_executable(Clicker main.cpp ClickableSprite.cpp Score.cpp Background.cpp Game.cpp)
target_link_libraries(Clicker sfml-graphics sfml-window sfml-system)
target_include_directories(Clicker PRIVATE headers)