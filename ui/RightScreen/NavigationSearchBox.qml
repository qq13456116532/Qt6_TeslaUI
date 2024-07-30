import QtQuick 2.15

Rectangle {
    id: navSearchBox
    color: "#f0f0f0"
    radius:5
    Image{
        id:searchIcon
        source: "qrc:/ui/assets/search.png"
        anchors{
            left:parent.left
            leftMargin: 25
            verticalCenter: parent.verticalCenter
        }
        height: parent.height*0.45
        fillMode: Image.PreserveAspectFit
    }
    Text{
        id:navigationPlaceHolderText
        visible: navigationTextInput.text === ""
        color:"#969696"
        text:"Navigate"
        anchors{
            verticalCenter: parent.verticalCenter
            left: searchIcon.right
            leftMargin: 20
        }
    }
    TextInput{
        id:navigationTextInput
        clip: true
        anchors{
            left: searchIcon.right
            leftMargin: 20
            top:parent.top
            bottom: parent.bottom
            right:parent.right

        }
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 16
    }

}
