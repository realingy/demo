/*
import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 2.1
import QtQuick.Dialogs 1.2

Rectangle {
    visible: true
    width: 640
    height: 480

    FileDialog {
        id: fileDialog;
        title: qsTr("Please choose an image file");
        nameFilters: [
            "Text Files (*.txt *.ini *.log *.c *.h *.java *.cpp *.html *.xml)",
            "Image Files (*.jpg *.png *.gif *.bmp *.ico)",
            "Video Files (*.ts *.mp4 *.avi *.flv *.mkv *.3gp)",
            "Audio Files (*.mp3 *.ogg *.wav *.wma *.ape *.ra)",
            "*.*"
        ];
        onAccepted: {
            var filepath = new String(fileUrl);
            //remove file:///
            if(Qt.platform.os == "windows"){
                root.statusBar.text = filepath.slice(8);
            }else{
                root.statusBar.text = filepath.slice(7);
            }
            var dot = filepath.lastIndexOf(".");
            var sep = filepath.lastIndexOf("/");
            if(dot > sep){
                var ext = filepath.substring(dot);
                root.processFile(fileUrl, ext.toLowerCase());
            }else{
                root.statusBar.text = "Not Supported!";
            }
        }
    }
}
*/

/*
MenuItem{

                iconSource: "res/fileText.png";
                action: Action{
                    id: textAction;
                    iconSource: "res/fileText.png";
                    text: "文本文件";
                    onTriggered: {
                        fileDialog.selectedNameFilter = fileDialog.nameFilters[0];
                        fileDialog.open();
                    }
                    tooltip: "打开txt等文本文件";
                }
            }
//-------------------------------------这里定义文件对话框

    // 文件对话框
    //-------------------------------------
    FileDialog {
        id: fileDialog;
        title: qsTr("Please choose an image file");
        nameFilters: [
            "Text Files (*.txt *.ini *.log *.c *.h *.java *.cpp *.html *.xml)",
            "Image Files (*.jpg *.png *.gif *.bmp *.ico)",
            "Video Files (*.ts *.mp4 *.avi *.flv *.mkv *.3gp)",
            "Audio Files (*.mp3 *.ogg *.wav *.wma *.ape *.ra)",
            "*.*"
        ];
        onAccepted: {
            var filepath = new String(fileUrl);
            //remove file:///
            if(Qt.platform.os == "windows"){
                root.statusBar.text = filepath.slice(8);
            }else{
                root.statusBar.text = filepath.slice(7);
            }
            var dot = filepath.lastIndexOf(".");
            var sep = filepath.lastIndexOf("/");
            if(dot > sep){
                var ext = filepath.substring(dot);
                root.processFile(fileUrl, ext.toLowerCase());
            }else{
                root.statusBar.text = "Not Supported!";
            }
        }
    }
*/

import QtQuick 2.0
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Dialogs 1.2

Rectangle {
    id: leftDockMenu
    width: 1000
    height: 600
//    iconSource: "res/fileText.png"

    Rectangle {
        id: mainLeftView
        color: "lightblue"
        anchors.fill: parent
        Button {
            id: btnOpen
            y: 0
            width: 100
            height: 100
            text: "打开"
            anchors.top: parent.top
            anchors.left: parent.left

            onClicked: {
                fileDialog.open()
            }
        }

        Text {
            id: folder
            text: "The Folder"
            color: "white"
            font.pixelSize: 30
            anchors {
                left: parent.left
                top: btnOpen.bottom
            }
        }
    }

    FileDialog {
        id: fileDialog
        title: "Please Choose an Folder"
//        nameFilters: ["Photo Files", "Image Files (*.jpg *.png *.gif *.bmp *.ico)", "*.*"]
        nameFilters: [
            "*.*",
            "Text Files (*.txt *.ini *.log *.c *.h *.java *.cpp *.html *.xml)",
            "Image Files (*.jpg *.png *.gif *.bmp *.ico)",
            "Video Files (*.ts *.mp4 *.avi *.flv *.mkv *.3gp)",
            "Audio Files (*.mp3 *.ogg *.wav *.wma *.ape *.ra)"
        ];
        onAccepted: {
            folder.text = String(fileUrl)
//            var filepath = new String(fileUrl)
//            folder.text = String(folder)
//            var filepath = new String(folder)
        }
    }
}
