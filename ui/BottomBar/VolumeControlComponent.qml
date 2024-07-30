import QtQuick 2.15

Item {
    property string fontColor: "white"

    Connections{
        target: audioController
        function onVolumeLevelChanged(){
            visibleTimer.stop()
            volumeIcon.visible = false
            visibleTimer.start()
        }

    }
    Timer{
        id: visibleTimer
        interval: 500
        repeat: false
        onTriggered: {
            volumeIcon.visible=true
        }
    }


    Rectangle{
        anchors{
            left: decrementButton.left
            right: incrementButton.right
        }
        Component.onCompleted: console.log(width)
    }

    //上面实际计算时，这个矩形长度是120,所以设置width为下面这个值让其他组件可以锚点
    width: 120 * (parent.width/1280)

    Rectangle{
        id: decrementButton
        anchors{
            right:volumeIcon.left
            rightMargin: 15
            top: parent.top
            bottom: parent.bottom
        }
        width: height/2
        color:"black"
        Text {
            id: decrementText
            anchors.centerIn: parent
            text: "<"
            font.pixelSize: 18
            color: fontColor
        }
        MouseArea{
            anchors.fill: parent
            onClicked: audioController.incrementVolume(-1)
        }
    }
    Image {
        id: volumeIcon
        height: parent.height*.5
        fillMode: Image.PreserveAspectFit
        anchors{
            right: incrementButton.left
            verticalCenter: parent.verticalCenter
            rightMargin: 15
        }
        source: {
            if(audioController.volumeLevel <= 0)
                return "qrc:/ui/assets/audio0.png"
            else if(audioController.volumeLevel <= 3)
                return "qrc:/ui/assets/audio1.png"
            else if(audioController.volumeLevel <= 6)
                return "qrc:/ui/assets/audio2.png"
            else if(audioController.volumeLevel <= 10)
                return "qrc:/ui/assets/audio3.png"
        }
    }
    Text {
        id: volumeTextLabel
        visible: !volumeIcon.visible
        anchors{
            centerIn: volumeIcon
        }
        color: fontColor
        font.pixelSize: 24
        text: audioController.volumeLevel
    }
    Rectangle{
        id: incrementButton
        anchors{
            left:parent.right
            top: parent.top
            bottom: parent.bottom
        }
        width: height/2
        color:"black"
        Text {
            id: incrementText
            anchors.centerIn: parent
            text: ">"
            font.pixelSize: 18
            color: fontColor
        }
        MouseArea{
            anchors.fill: parent
            onClicked: audioController.incrementVolume(1)
        }
    }


}
