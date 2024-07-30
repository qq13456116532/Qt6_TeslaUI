import QtQuick 2.15

Item {
    property string fontColor: "white"
    property var havcController

    width: 90* (parent.width/1280)

    Rectangle{
        id: decrementButton
        anchors{
            left:parent.left
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
            onClicked: havcController.incrementTargetTemperature(-1)
        }
    }
    Text {
        id: targetTemperatureText
        anchors{
            left: decrementButton.right
            verticalCenter: parent.verticalCenter
            leftMargin: 15
        }
        color: fontColor
        font.pixelSize: 24
        text: havcController.targetTemperature

    }
    Text{
        id: subTempText
        text: "target"
        color: fontColor
        anchors{
            top: parent.top
            bottom: parent.bottom
            left: decrementButton.right
            leftMargin: 10
            bottomMargin: parent.height*0.8
        }
        font.pixelSize: 12
    }
    Rectangle{
        id: incrementButton
        anchors{
            left:targetTemperatureText.right
            leftMargin: 15
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
            onClicked: havcController.incrementTargetTemperature(1)
        }
    }


}
