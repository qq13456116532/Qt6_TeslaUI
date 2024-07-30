import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle{
    id: bottomBar
    signal iconClicked(int iconIndex) // 定义信号，传递图标的索引

    anchors{
        left: parent.left
        right: parent.right
        bottom: parent.bottom
    }
    color:"black"
    height: parent.height/12
    Image {
        id: carSettingsIcon
        anchors{
            left: parent.left
            leftMargin: 30
            verticalCenter: parent.verticalCenter
        }
        height: parent.height*0.85
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/carIcon.png"
        MouseArea{
            anchors.fill: parent
            onClicked: iconClicked(0)
        }
    }

    HVACComponent{
        id: driverHVACControl
        anchors{
            top:parent.top
            bottom: parent.bottom
            left: carSettingsIcon.right
            leftMargin: 75
        }
        havcController: driverHVAC
    }
    Image {
        id: telephoneIcon
        source: "qrc:/ui/assets/telephone.png"
        anchors{
            verticalCenter: parent.verticalCenter
            left: driverHVACControl.right
            leftMargin: 120
        }
        height: parent.height*0.75
        fillMode: Image.PreserveAspectFit
        MouseArea{
            anchors.fill: parent
            onClicked: iconClicked(1)
        }
    }
    Image {
        id: voiceIcon
        source: "qrc:/ui/assets/voice.png"
        anchors{
            verticalCenter: parent.verticalCenter
            left: telephoneIcon.right
            leftMargin: 25
        }
        height: parent.height*0.75
        fillMode: Image.PreserveAspectFit
        MouseArea{
            anchors.fill: parent
            onClicked: iconClicked(2)
        }
    }
    Image {
        id: cameraIcon
        source: "qrc:/ui/assets/camera.png"
        anchors{
            verticalCenter: parent.verticalCenter
            left: voiceIcon.right
            leftMargin: 25
        }
        height: parent.height*0.75
        fillMode: Image.PreserveAspectFit
        MouseArea{
            anchors.fill: parent
            onClicked: iconClicked(3)
        }
    }
    Image {
        id: moreIcon
        source: "qrc:/ui/assets/more.png"
        anchors{
            verticalCenter: parent.verticalCenter
            left: cameraIcon.right
            leftMargin: 25
        }
        height: parent.height*0.75
        fillMode: Image.PreserveAspectFit
        MouseArea{
            anchors.fill: parent
            onClicked: iconClicked(4)
        }
    }
    Image {
        id: musicIcon
        source: "qrc:/ui/assets/music.png"
        anchors{
            verticalCenter: parent.verticalCenter
            left: moreIcon.right
            leftMargin: 25
        }
        height: parent.height*0.75
        fillMode: Image.PreserveAspectFit
        MouseArea{
            anchors.fill: parent
            onClicked: iconClicked(5)
        }
    }
    Image {
        id: calendarIcon
        source: "qrc:/ui/assets/calendar.png"
        anchors{
            verticalCenter: parent.verticalCenter
            left: musicIcon.right
            leftMargin: 25
        }
        height: parent.height*0.75
        fillMode: Image.PreserveAspectFit
        MouseArea{
            anchors.fill: parent
            onClicked: iconClicked(6)
        }
    }
    HVACComponent{
        id: passengerHVACControl
        anchors{
            top:parent.top
            bottom: parent.bottom
            right: volumeControl.left
            rightMargin: 100
        }
        havcController: passengerHVAC
    }



    VolumeControlComponent{
        id: volumeControl
        anchors{
            right: parent.right
            rightMargin: 30
            top: parent.top
            bottom: parent.bottom
        }
    }
}
