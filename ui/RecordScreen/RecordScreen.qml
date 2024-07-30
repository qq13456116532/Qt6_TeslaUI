import QtQuick 2.15

Rectangle{
    id: recordScreen
    anchors{
        top: parent.top
        bottom: bottomBar.top
        right: parent.right
    }
    color: "white"
    width: parent.width *2/3
    Text {
        id: recordInfo
        text: "There is the record Page!"
        anchors{
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
        }
    }
}
