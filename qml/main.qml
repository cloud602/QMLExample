import QtQuick 1.1

import "mycomponent"

Rectangle {
    width: 480
    height: 640
    color: "lightgray"

    Column
    {
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 10

        Text {
            id:helloText
            anchors.horizontalCenter: parent.horizontalCenter
            y: 10
            text: qsTr("Hello World")
            font.pointSize: 24
            font.bold: true
        }
        
        Row {
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 10

            // NOTE: A property that named 'onSignalName' is a signal 
            //       handler can be used to respond to component.
            //       Below onClicked will receive the cellColor value 
            //       from  Cell component on it is clicked.
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
