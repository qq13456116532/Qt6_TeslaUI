import QtQuick 2.15


Rectangle{
    id: leftScreen
    anchors{
        left: parent.left
        right: rightScreen.left
        top: parent.top
        bottom: bottomBar.top
    }
    //color: "white"
    //width: parent.width *1/3
    Image {
        id: carRender
        anchors.centerIn: parent
        width: parent.width
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/tesla.png"
    }


}
