import QtQuick 2.2
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0

Page {
    XmlListModel {
        id: xmlListModel
        source: "http://cbr.ru/scripts/XML_daily.asp"
        query: "/ValCurs/Valute"
        XmlRole{
            name: "NumCode"
            query: "NumCode/string()"
        }
        XmlRole{
            name: "CharCode"
            query: "CharCode/string()"
        }
        XmlRole{
            name: "Nominal"
            query: "Nominal/string()"
        }
        XmlRole{
            name: "Name"
            query: "Name/string()"
        }
        XmlRole{
            name: "Value"
            query: "Value/string()"
        }
    }

    SilicaListView {
        anchors.fill: parent
        model: xmlListModel
        header: PageHeader { title: "Valutes" }
        delegate: Column {
            x: Theme.horizontalPageMargin
            Label {
                text: Name
            }
            Label {
                text: Value
            }
        }
    }
}
