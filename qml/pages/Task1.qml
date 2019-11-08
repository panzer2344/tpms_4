import QtQuick 2.2
import Sailfish.Silica 1.0

Page {
    ListModel {
        id: dataModel

        ListElement{ color: "white"; text: "White"; }
        ListElement{ color: "black"; text: "Black"; }
        ListElement{ color: "blue"; text: "Blue"; }
    }

    SilicaListView  {
        anchors.fill: parent
        model: dataModel
        delegate: Rectangle {
            width: parent.width
            height: 100
            color: model.color
            Text{
                anchors.centerIn: parent
                text: model.text
                color: model.color !== "black" ? "black" : "white"
            }
        }
    }
}
