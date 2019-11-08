import QtQuick 2.3
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0

Page {
    ConfigurationValue {
        id: setting
        key: "apps/app_name/setting_name"
        defaultValue: "Menu Default"
    }

    Column {
        PageHeader {title: "Settings"}
        Label {

        }
    }
}
