import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 2.1
import RType 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Label {
        id: label
        text: app.getText()
        anchors.centerIn: parent
    }

    Test {
        id: app
    }

    Connections {
        target: app
        onSigText: label.text = "Text Is Changed! " + text;
    }
}
