// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import "AI.js" as AI

Rectangle {
    id: mainwindow
    objectName: "mainwindow"
    width: 400
    height: 430
    color: "#0c6f0d"
    signal appquit()
    property int lastCPUMove: -1
    property int lastHumanMove: -1
    property int winpos: -1
    Component.onCompleted: AI.getturn()

    Rectangle {
        id: line4
        x: 103
        width: 6
        height: 344
        color: "#090808"
        radius: 3
        visible: false
        anchors.top: menu1.bottom
        anchors.topMargin: 20
        anchors.right: vbar1.left
        anchors.rightMargin: 52
    }

    Rectangle {
        id: vbar1
        objectName: "vbar1"
        width: 15
        color: "#000000"
        radius: 7
        anchors.left: parent.left
        anchors.leftMargin: 130
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 50

    }

    Rectangle {
        id: vbar2
        width: 15
        color: "#000000"
        radius: 7
        anchors.left: vbar1.right
        anchors.leftMargin: 110
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 50
    }

    Rectangle {
        id: hbar1
        height: 15
        color: "#000000"
        radius: 7
        anchors.top: parent.top
        anchors.topMargin: 160
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 20
    }

    Rectangle {
        id: hbar2
        x: 20
        y: 233
        height: 15
        color: "#000000"
        radius: 7
        anchors.top: hbar1.bottom
        anchors.topMargin: 110
        anchors.rightMargin: 20
        anchors.right: parent.right
        anchors.leftMargin: 20
        anchors.left: parent.left
    }

    MouseArea {
        id: area0
        x: 20
        y: 50
        width: 110
        height: 110
        onClicked: {
               if(text11.visible==false){
                   AI.check(0,0)
                    text11.visible=true
               }
        }

        Text {
            id: text11
            x: 0
            y: 0
            text: qsTr("X")
            visible: false
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
            anchors.fill: parent
            font.pixelSize: 100

        }
    }

    MouseArea {
        id: area1
        x: 145
        y: 50
        width: 110
        height: 110
        onClicked: {
               if(text12.visible==false){
                   AI.check(0,1)
                    text12.visible=true
               }
        }

        Text {
            id: text12
            x: 0
            y: 0
            text: qsTr("X")
            visible: false
            font.pixelSize: 100
            anchors.fill: parent
            anchors.topMargin: 0
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    MouseArea {
        id: area2
        x: 270
        y: 50
        width: 110
        height: 110
        onClicked: {
               if(text13.visible==false){
                   AI.check(0,2)
                    text13.visible=true
               }
        }
        Text {
            id: text13
            x: 0
            y: 0
            text: qsTr("X")
            visible: false
            font.pixelSize: 100
            anchors.fill: parent
            anchors.topMargin: 0
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    MouseArea {
        id: area3
        x: 20
        y: 175
        width: 110
        height: 110
        onClicked: {
               if(text21.visible==false){
                   AI.check(1,0)
                    text21.visible=true
               }
        }
        Text {
            id: text21
            x: 0
            y: 0
            text: qsTr("X")
            visible: false
            font.pixelSize: 100
            anchors.fill: parent
            anchors.topMargin: 0
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    MouseArea {
        id: area4
        x: 145
        y: 175
        width: 110
        height: 110
        onClicked: {
               if(text22.visible==false){
                   AI.check(1,1)
                    text22.visible=true
               }
        }

        Text {
            id: text22
            x: 0
            y: 0
            text: qsTr("X")
            visible: false
            font.pixelSize: 100
            anchors.fill: parent
            anchors.topMargin: 0
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    MouseArea {
        id: area5
        x: 270
        y: 175
        width: 110
        height: 110
        onClicked: {
               if(text23.visible==false){
                   AI.check(1,2)
                    text23.visible=true
               }
        }

        Text {
            id: text23
            x: 0
            y: 0
            text: qsTr("X")
            visible: false
            font.pixelSize: 100
            anchors.fill: parent
            anchors.topMargin: 0
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    MouseArea {
        id: area6
        x: 20
        y: 300
        width: 110
        height: 110
        onClicked: {
               if(text31.visible==false){
                   AI.check(2,0)
                    text31.visible=true
               }
        }

        Text {
            id: text31
            x: 0
            y: 0
            text: qsTr("X")
            visible: false
            font.pixelSize: 100
            anchors.fill: parent
            anchors.topMargin: 0
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter

        }
    }

    MouseArea {
        id: area7
        x: 145
        y: 270
        width: 110
        height: 110
        onClicked: {
               if(text32.visible==false){
                   AI.check(2,1)
                    text32.visible=true
               }
        }

        Text {
            id: text32
            x: 0
            y: 30
            text: qsTr("X")
            visible: false
            font.pixelSize: 100
            anchors.fill: parent
            anchors.topMargin: 30
            anchors.rightMargin: 0
            anchors.bottomMargin: -30
            anchors.leftMargin: 0
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    MouseArea {
        id: area8
        x: 270
        y: 300
        width: 110
        height: 110
        onClicked: {
               if(text33.visible==false){
                   AI.check(2,2)
                    text33.visible=true
               }
        }
        Text {
            id: text33
            x: 0
            y: 0
            text: qsTr("X")
            visible: false
            font.pixelSize: 100
            anchors.fill: parent
            anchors.topMargin: 0
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    Rectangle {
        id: menu1
        x: 0
        y: 0
        width: 400/3
        height: 34
        color: menuarea1.containsMouse ? "#6d6767" : "#514b4b"
        radius: 0
        border.width: 2
        border.color: "#000000"

        MouseArea {
            id: menuarea1
            hoverEnabled: true
            anchors.fill: parent
            onClicked: AI.reset()

            Text {
                id: text1
                color: "#030202"
                text: qsTr("New Game")
                style: Text.Raised
                font.family: "DejaVu Serif"
                font.italic: false
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
                font.pixelSize: 20
            }

        }
    }

    Rectangle {
        id: menu2
        x: 133
        y: 0
        width: 400/3
        height: 34
        color: menuarea2.containsMouse ? "#6d6767" : "#514b4b"
        radius: 0
        border.width: 2
        border.color: "#000000"
        anchors.left: menu1.right
        anchors.leftMargin: 0

        MouseArea {
            id: menuarea2
            hoverEnabled: true
            anchors.fill: parent
            onClicked: AI.undo()

            Text {
                id: text2
                color: "#050404"
                text: qsTr("Undo Move")
                style: Text.Raised
                font.pixelSize: 20
                anchors.fill: parent
                font.italic: false
                font.family: "DejaVu Serif"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
    }

    Rectangle {
        id: menu3
        x: 267
        y: 0
        width: 400/3
        height: 34
        color: menuarea3.containsMouse ? "#6d6767" : "#514b4b"
        radius: 0
        border.width: 2
        border.color: "#000000"

        MouseArea {
            id: menuarea3
            hoverEnabled: true
            anchors.fill: parent
            onClicked: AI.showhelp()

            Text {
                id: text3
                color: "#030202"
                text: qsTr("Help")
                style: Text.Raised
                font.pixelSize: 20
                anchors.fill: parent
                font.italic: false
                font.family: "DejaVu Serif"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter

            }
        }
        Rectangle {
            id: help
            x: -260
            y: 43
            width: 384
            height: 383
            color: "#000000"
            visible: false
            smooth: true
            opacity: 0.680

            Text {
                id: helptext
                x: 18
                y: 31
                width: 348
                height: 322
                color: "#ec190a"
                text: "This is a basic TicTacToe game whose
objective is to align three Xs or
0s in either horizontal, vertical
or diagonal manner at the same time
preventing your opponent from doing
the same. The computer plays with
Os and you play with Xs. The first
one to go is decided on random and
on winning a strike through is shown
through the three pieces in row.
Have fun playing!!

Developed by: Arjun Basu
e-mail: arjunkbasu@gmail.com"


    font.pixelSize: 18
    font.family: "OpenSymbol"
    verticalAlignment: Text.AlignTop
    horizontalAlignment: Text.AlignLeft
            }
        }
    }

    Rectangle {
        id: line6
        x: 322
        y: 54
        width: 6
        height: 344
        color: "#090808"
        radius: 3
        visible: false
        anchors.top: menu1.bottom
        anchors.topMargin: 20
        anchors.rightMargin: -198
        anchors.right: vbar1.left
    }

    Rectangle {
        id: line5
        x: 197
        y: 54
        width: 6
        height: 344
        color: "#090808"
        radius: 3
        visible: false
        anchors.top: menu1.bottom
        anchors.topMargin: 20
        anchors.rightMargin: -73
        anchors.right: vbar1.left
    }
    Rectangle {
        id: line2
        x: 28
        width: 344
        height: 6
        color: "#0f0e0e"
        visible: false
        anchors.topMargin: 110/2 -2.5
        anchors.top: hbar1.bottom
    }

    Rectangle {
        id: line1
        x: 28
        y: 102
        width: 344
        height: 6
        color: "#0f0e0e"
        anchors.topMargin: -68
        anchors.top: hbar1.bottom
        visible: false
    }

    Rectangle {
        id: line3
        x: 28
        y: 352
        width: 344
        height: 6
        color: "#0f0e0e"
        anchors.topMargin: 53
        anchors.top: hbar2.bottom
        visible: false
    }

    Rectangle {
        id: line7
        x: -23
        y: 223
        width: 450
        height: 6
        color: "#0f0e0e"
        smooth: true
        rotation: 45
        visible: false
    }

    Rectangle {
        id: line8
        x: -23
        y: 223
        width: 450
        height: 6
        color: "#0f0e0e"
        rotation: -45
        visible: false
    }


}

