cmake_minimum_required(VERSION 3.16)

project(TeslaInfotainment VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTORCC ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)


qt_add_executable(appTeslaInfotainment
    main.cpp

)

qt_add_qml_module(appTeslaInfotainment
    URI TeslaInfotainment
    VERSION 1.0
    QML_FILES
        Main.qml
        QML_FILES ui/BottomBar/BottomBar.qml
        QML_FILES ui/RightScreen/RightScreen.qml
        QML_FILES ui/LeftScreen/LeftScreen.qml
        RESOURCES
        RESOURCES
        RESOURCES resource.qrc
        SOURCES Controllers/system.h Controllers/system.cpp
        QML_FILES ui/RightScreen/NavigationSearchBox.qml
        SOURCES Controllers/hvachandler.h Controllers/hvachandler.cpp
        QML_FILES ui/BottomBar/HVACComponent.qml
        SOURCES
        SOURCES Controllers/audiocontroller.h Controllers/audiocontroller.cpp
        QML_FILES ui/BottomBar/VolumeControlComponent.qml
        QML_FILES ui/CallScreen/CallScreen.qml
        QML_FILES ui/CameraScreen/CameraScreen.qml
        QML_FILES ui/MoreScreen/MoreScreen.qml
        QML_FILES ui/MusicScreen/MusicScreen.qml
        QML_FILES ui/RecordScreen/RecordScreen.qml
        QML_FILES ui/CalendarScreen/CalendarScreen.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appTeslaInfotainment PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appTeslaInfotainment
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appTeslaInfotainment
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appTeslaInfotainment
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
