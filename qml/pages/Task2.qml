import QtQuick 2.2
import Sailfish.Silica 1.0

Page {

    ListModel {
        id: dataModel
    }

    Column {
        SilicaListView {
            width: parent.width
            height: parent.height - addBtn.height
            anchors.fill: parent
            model: dataModel
            delegate: Rectangle {
                color: "white"
                width: parent.width
                height: 100
                anchors.centerIn: parent.Center
                Button{
                    text: model.text + model.elemIndex
                    onClicked: dataModel.remove(model.index)

                }
            }
        }
    }

    Button {
        id: addBtn
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Add"
        onClicked: dataModel.append({text: "Item#", elemIndex: dataModel.count})
    }
}
