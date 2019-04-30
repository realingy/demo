import QtQuick 2.6
import QtQuick.Controls 2.1

Rectangle {
    width: 640
    height: 480

    Label {
        anchors.fill: parent
        Image {
            id: img
            anchors.centerIn: parent
            width: 60
            fillMode: Image.PreserveAspectFit
            source: "qrc:/icon/BrightnessHigh.png"
        }
    }
}
