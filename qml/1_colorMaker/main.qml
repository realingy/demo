import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 2.1
import colorMaker 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Text {
        id: timeLabel
        anchors {
        left: parent.left
            leftMargin: 4
            top: parent.top
            topMargin: 4
        }
    }

    ColorMaker {
        id: colorMaker
        color: "green"
    }

    Rectangle {
        id: colorRect
        anchors.centerIn: parent
        width: 200
        height: 200
        color: "blue"
    }

    Button {
        id: start
        text: "Start"
        anchors {
            left: parent.left
            leftMargin: 4
            bottom: parent.bottom
            bottomMargin: 4
        }
        onClicked: {
            colorMaker.start()
        }
    }

    Button {
        id: stop
        text: "Stop"
        anchors {
            left: start.right
            leftMargin: 4
            bottom: start.bottom
        }
        onClicked: {
            colorMaker.stop()
        }
    }

    function changeAlgorithm(button, algorithm)
    {
        switch(algorithm)
        {
        case 0:
            button.text = "RandomRGB"
            break
        case 1:
            button.text = "RandomRed"
            break
        case 2:
            button.text = "RandomGreen"
            break
        case 3:
            button.text = "RandomBlue"
            break
        case 4:
            button.text = "LinearIncrease"
            break
        }
    }

    Button {
        id: colorAlgorithm
        text: "RandomRGB"
        anchors {
            left: stop.right
            leftMargin: 4
            bottom: start.bottom
        }
        onClicked: {
            var algorithm = (colorMaker.algorithm() + 1) % 5
            changeAlgorithm(colorAlgorithm, algorithm)
            colorMaker.setAlgorithm(algorithm)
        }
    }

    Button {
        id: quit
        text: "Quit"
        anchors {
            left: colorAlgorithm.right
            leftMargin: 4
            bottom: start.bottom
        }
        onClicked: {
            Qt.quit()
        }
    }

    Component.onCompleted: {
        colorMaker.color = Qt.rgba(0, 180, 120, 255)
        colorMaker.setAlgorithm(ColorMaker.LinearIncrease)
        changeAlgorithm(colorAlgorithm, colorMaker.algorithm())
    }

    Connections {
        target: colorMaker
        onCurrentTime: {
            timeLabel.text = strTime
            timeLabel.color = colorMaker.timeColor
        }
    }

    Connections {
        target: colorMaker
        onColorChanged: {
            colorRect.color = color
        }
    }
}
