import QtQuick 2.15

Rectangle{
    id: calendarScreen
    anchors{
        top: parent.top
        bottom: bottomBar.top
        right: parent.right
    }
    color: "white"
    width: parent.width *2/3
    Text {
        id: callInfo
        text: "There is the calendar Page!"
        anchors{
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
        }
    }
}
