import QtQuick 2.15

Rectangle{
    id: musicScreen
    anchors{
        top: parent.top
        bottom: bottomBar.top
        right: parent.right
    }
    color: "white"
    width: parent.width *2/3
    Text {
        id: musicInfo
        text: "There is the music Page!"
        anchors{
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
        }
    }
}
