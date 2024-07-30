import QtQuick
import "ui/BottomBar"
import "ui/RightScreen"
import "ui/LeftScreen"
import "ui/CallScreen"
import "ui/RecordScreen"
import "ui/CameraScreen"
import "ui/MoreScreen"
import "ui/MusicScreen"
import "ui/CalendarScreen"
Window {
    property int currentIndex: 0 // 当前显示的索引

    width: 1280
    height: 720
    visible: true
    title: qsTr("Tesla Infotainment")

    LeftScreen{
        id: leftScreen
    }

    RightScreen{
        id: rightScreen
        visible: currentIndex===0
    }
    CallScreen{
        id: callScreen
        visible: currentIndex===1
    }
    RecordScreen{
        id: recordScreen
        visible: currentIndex===2
    }
    CameraScreen{
        id: cameraScreen
        visible: currentIndex===3
    }
    MoreScreen{
        id: moreScreen
        visible: currentIndex===4
    }
    MusicScreen{
        id: musicScreen
        visible: currentIndex===5
    }
    CalendarScreen{
        id: calendarScreen
        visible: currentIndex===6
    }

    BottomBar{
        id: bottomBar
        // 连接信号到槽函数
        onIconClicked: {
            currentIndex = iconIndex
        }
    }




}
