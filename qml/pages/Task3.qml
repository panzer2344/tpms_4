import QtQuick 2.2
import Sailfish.Silica 1.0

Page {
    property var dataModel: [
        {color : "white", text : "White"},
        {color : "black", text : "Black"},
        {color : "blue", text : "Blue"}
    ]

    SilicaListView {
        anchors.fill: parent
        model: dataModel
        delegate: Rectangle {
            width: parent.width
            height: 100
            color: modelData.color
            Button{
                anchors.centerIn: parent
                text: modelData.text
            }
        }
    }
}
