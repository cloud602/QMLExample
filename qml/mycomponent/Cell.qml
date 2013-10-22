
import QtQuick 1.0

// NOTE: "Item" is the most basic virtual emelemt of in 
//       QML and is used as a container for other elements.
Item {
    id: container
    property alias cellColor: rectangle.color  
    signal clicked(color cellColor)

    width: 50; height:50

    Rectangle {
        id: rectangle
        border.color: "white"
        anchors.fill: parent
    }

    MouseArea {
        anchors.fill: parent
        onClicked: container.clicked(container.cellColor)
    }
}
