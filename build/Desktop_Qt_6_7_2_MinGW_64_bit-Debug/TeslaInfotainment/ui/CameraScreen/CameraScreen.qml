import QtQuick 2.15

Rectangle{
    id: cameraScreen
    anchors{
        top: parent.top
        bottom: bottomBar.top
        right: parent.right
    }
    color: "white"
    width: parent.width *2/3
    Text {
        id: cameraInfo
        text: "There is the Camera Page!"
        anchors{
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
        }
    }
}
