import QtQuick 1.1

import "mycomponent"

Rectangle {
    width: 240
    height: 320

    Column
    {
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 10

        Text {
            id:helloText
            text: qsTr("Hello World")
        }
        
        Row {
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 10

            Cell { cellColor: "red"; onClicked: helloText.color = cellColor }
            Cell { cellColor: "blue"; onClicked: helloText.color = cellColor }
            Cell { cellColor: "green"; onClicked: helloText.color = cellColor }
        }

        Button {
            id: buttonRun
            text: "Update Text"
            onClicked:  {
                console.log(exampleclass.hello())
                helloText.text = exampleclass.hello2()
            }
        }

        Button {
            id: buttonQuit
            text: "Quit"
            onClicked:  {
                Qt.quit()
            }
        }

    }
}
