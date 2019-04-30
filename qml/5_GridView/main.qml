import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 2.1

/*
Rectangle {
    visible: true
    width: 640
    height: 480

    ListModel {
        id: model
        ListElement {
            name: "Jim Williams"
            portrait: "qrc:/icon/BrightnessHigh.png"
        }
        ListElement {
            name: "John Brown"
            portrait: "qrc:/icon/BrightnessHigh.png"
        }
        ListElement {
            name: "Bill Smyth"
            portrait: "qrc:/icon/BrightnessHigh.png"
        }
        ListElement {
            name: "Sam Wise"
            portrait: "qrc:/icon/BrightnessHigh.png"
        }
    }
    GridView {
//        width: 200;
//        height: 200
        anchors.fill: parent
        model: model
        delegate: Column {
            Image {
                source: portrait
                width: 200
                fillMode: Image.PreserveAspectFit
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text {
                text: name;
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }
}
*/

/*
//选中背景(不可变)
Rectangle {
    width: 600; height: 400

    Component {
        id: contactDelegate
        Item {
            width: grid.cellWidth; height: grid.cellHeight
            Column {
                anchors.fill: parent
                Image {
                    source: portrait
                    width: grid.cellWidth
//                    height: grid.cellHeight
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text { text: name; anchors.horizontalCenter: parent.horizontalCenter }
            }
        }
    }

    ListModel {
        id: gridModel
        ListElement {
            name: "Jim Williams"
            portrait: "qrc:/icon/BrightnessHigh.png"
        }
        ListElement {
            name: "John Brown"
            portrait: "qrc:/icon/BrightnessHigh.png"
        }
        ListElement {
            name: "Bill Smyth"
            portrait: "qrc:/icon/BrightnessHigh.png"
        }
        ListElement {
            name: "Sam Wise"
            portrait: "qrc:/icon/BrightnessHigh.png"
        }
    }

    GridView {
        id: grid
        anchors.fill: parent
        cellWidth: 80; cellHeight: 80

        model: gridModel
        delegate: contactDelegate
        highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
        focus: true
    }
}
*/

Rectangle {
    width: 600; height: 400

    ListModel {
        id: gridModel
        ListElement {
            name: "Jim Williams"
            portrait: "qrc:/icon/BrightnessHigh.png"
        }
        ListElement {
            name: "John Brown"
            portrait: "qrc:/icon/BrightnessHigh.png"
        }
        ListElement {
            name: "Bill Smyth"
            portrait: "qrc:/icon/BrightnessHigh.png"
        }
        ListElement {
            name: "Sam Wise"
            portrait: "qrc:/icon/BrightnessHigh.png"
        }
    }

    GridView {
//        width: 300; height: 200
        anchors.fill: parent
        cellWidth: 80; cellHeight: 80
        currentIndex: 2
//        spacing: 10

        Component {
            id: contactsDelegate
            Rectangle {
                id: wrapper
                width: 80
                height: 80
                color: GridView.isCurrentItem ? "gray" : "lightgray"
                border.color: "white"
//                border.width: 2
                Text {
                    id: contactInfo
                    text: name
                    color: wrapper.GridView.isCurrentItem ? "red" : "black"
                    anchors.centerIn: parent
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: wrapper.GridView.view.currentIndex = index
                }
            }
        }

        model: gridModel
        delegate: contactsDelegate
        focus: true
    }
}
