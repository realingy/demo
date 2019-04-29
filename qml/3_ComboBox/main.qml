import QtQuick 2.6
import QtQuick.Window 2.2
import QtGraphicalEffects 1.0
import QtQuick.Controls 2.1

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("ComboBox")

    Item {
        id: root

        property var model: listModel
        property real radius: 12
        ListModel {
            id: listModel
            ListElement { icon: "qrc:/high.png"; label: "High" }
            ListElement { icon: "qrc:/medium.png"; label: "Medium" }
            ListElement { icon: "qrc:/low.png"; label: "Low" }
        }

        property int currentIndex: 1
        property real itemWidth: 204
        property real itemHeight: 144

        property real margins: 10

        width: itemWidth + margins * 2
        height: model.count * itemHeight + margins * 2

        RectangularGlow {
            id: effect
            anchors.fill: boundaryRect
            glowRadius: 3
            spread: 0.2
            color: "black"
            cornerRadius: root.radius + glowRadius
        }

        Item {
            id: src
            anchors.fill: boundaryRect

            Rectangle {
                anchors.centerIn: parent
                width: src.width - 2
                height: src.height - 2
                color: "#212121"
                radius: root.radius
            }
        }

        InnerShadow {
            anchors.fill: src
            cached: true
            horizontalOffset: 0
            verticalOffset: 0
            radius: 16
            samples: 32
            color: "#000000"
            smooth: true
            source: src
        }

        Rectangle {
            id: boundaryRect
            anchors.fill: parent
            anchors.margins: root.margins
            border {color: "#666666"; width: 2}
            radius: root.radius
            color: "transparent"
        }

        Repeater {
            model: root.model
            delegate: Item {
                width: root.itemWidth
                height: root.itemHeight
                x: root.margins
                y: root.margins + root.itemHeight * index

                RectangularGlow {
                    id: handleEffect
                    anchors.fill: currentBackRect
                    glowRadius: 15
                    spread: 0.2
                    color: "#882e91ed"
                    cornerRadius: root.radius + glowRadius
                    visible: root.currentIndex == index
                }

                Rectangle {
                    id: currentBackRect
                    radius: root.radius
                    anchors.fill: parent
                    border {color: "#2e91ed"; width: 3}
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: "#202020" }
                        GradientStop { position: 1.0; color: "#090909" }
                    }
                    visible: root.currentIndex == index
                }

                Image {
                    id: itemImage
                    source: icon
                    anchors { centerIn: parent; verticalCenterOffset: -20 }
                }

                Label {
                    id: itemLabel
                    color: root.currentIndex == index ? "#fdfdfd" : "#9b9b9b"
                    text: label
                    font {pointSize: 14}
                    anchors {centerIn: parent; verticalCenterOffset: 35}
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        root.currentIndex = index;
                    }

                }
            }
        }
    }
}
