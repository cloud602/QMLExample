
import QtQuick 1.0

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
