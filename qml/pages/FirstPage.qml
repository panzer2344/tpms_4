import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All
    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height
        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("UI Template")
            }

            Button {
                text: "Task1"
                onClicked: pageStack.push(Qt.resolvedUrl("Task1.qml"))
            }

            Button {
                text: "Task2"
                onClicked: pageStack.push(Qt.resolvedUrl("Task2.qml"))
            }

            Button {
                text: "Task3"
                onClicked: pageStack.push(Qt.resolvedUrl("Task3.qml"))
            }

            Button {
                text: "Task4"
                onClicked: pageStack.push(Qt.resolvedUrl("Task04.qml"))
            }

            Button {
                text: "Task5"
                onClicked: pageStack.push(Qt.resolvedUrl("Task5.qml"))
            }

            Button {
                text: "Task6"
                onClicked: pageStack.push(Qt.resolvedUrl("Task6.qml"))
            }
        }
    }
}
