/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.2
import QtQuick.Controls 6.2
import UntitledProject
import QtQuick.Timeline 6.0
import QtQuick3D.Helpers 6.4
import QtQuick.Studio.Components 1.0
import FlowView 6.0

Rectangle {
    id: background
    width: Constants.width
    height: Constants.height
    color: "#272727"
    state: "Opening"
    scale: 1

    Rectangle {
        id: headerbox
        x: -6
        y: 937
        width: 1912
        height: 143
        color: "#1d1d1d"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
    }

    SButton {
        id: startPlanning
        x: 1399
        y: 719
        width: 521
        height: 103
        text: "Start Planning"
        state: "normal"

        Connections {
            target: startPlanning
            onClicked: background.state = "MainMenu"
        }
    }

    SButton {
        id: exitApp
        x: 1920
        y: 828
        width: 521
        height: 103
        text: "Exit App"
        state: "normal"

        Connections {
            target: exitApp
            onClicked: background.state = "Opening"
        }
    }

    AddOption {
        id: addOption
        x: -1234
        y: 978

        Connections {
            target: addOption
            onClicked: background.state = "State2"
        }
    }

    PathView {
        id: pathView
        x: -915
        y: 1567
        width: 200
        height: 100
        delegate: Column {
            spacing: 5
            Rectangle {
                id: createslider
                width: 450
                height: 788
                color: "#212121"
                border.color: "#414141"
                border.width: 5

                Image {
                    id: createimage
                    source: imagesource
                    width: 450
                    height: 788
                    fillMode: Image.PreserveAspectFit
                    opacity: 0.2
                }
                Image {
                    id: addcreate
                    source: "images/addthem.png"
                    width: 200
                    height: 200
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                    opacity: 0.7
                }
                Text {
                    id: text2
                    width: 200
                    height: 500
                    x: positionx
                    y: positiony
                    color: "#f7f7f7"
                    font.pixelSize: 70
                    text: name
                    font.bold: true
                }

            }

        }
        path: Path {
            startX: 2312
            startY: 375

            PathCubic {
                x: 1401
                y: 516
                control1Y: 425
                control2X: 1651
                control1X: 2016
                control2Y: 498
            }

            PathCubic {
                x: -331.448
                y: 467.184
                control1Y: 524.53333
                control2X: 268.02667
                control1X: 759.06667
                control2Y: 496.01333
            }
        }
        model: ListModel {
            ListElement {
                name: "Create Event"
                positionx: 15
                positiony: 550
                imagesource: "images/createimage1.webp"
            }

            ListElement {
                name: "Create Event"
                positionx: 15
                positiony: 550
                imagesource: "images/createimage2.webp"
            }

            ListElement {
                name: "Create Event"
                positionx: 15
                positiony: 550
                imagesource: "images/createimage3.webp"
            }

            ListElement {
                name: "Create Event"
                positionx: 15
                positiony: 550
                imagesource: "images/createimage4.webp"
            }
        }
    }

    Image {
        id: hopefully
        x: -278
        y: -1070
        width: 1393
        height: 927
        opacity: 0.107
        source: "images/hopefully.webp"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: welcome
        x: 2214
        y: -466
        width: 485
        height: 270
        color: "#f7f7f7"
        text: qsTr("Welcome")
        font.pixelSize: 80
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.weight: Font.ExtraBold
    }

    Timeline {
        id: openingTimeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                onFinished: background.state = "StartMenu"
                loops: 1
                duration: 3000
                running: false
                to: 3000
                from: 0
            }
        ]
        enabled: false
        startFrame: 0
        endFrame: 3000

        KeyframeGroup {
            target: logonobackground
            property: "opacity"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                frame: 1002
                value: 1
            }
        }

        KeyframeGroup {
            target: logonobackground
            property: "x"
            Keyframe {
                frame: 0
                value: 106
            }

            Keyframe {
                frame: 1002
                value: 106
            }

            Keyframe {
                frame: 2002
                value: 1253
            }
        }

        KeyframeGroup {
            target: logonobackground
            property: "width"
            Keyframe {
                frame: 0
                value: 1709
            }

            Keyframe {
                frame: 1002
                value: 1709
            }

            Keyframe {
                frame: 2002
                value: 642
            }
        }

        KeyframeGroup {
            target: logonobackground
            property: "y"
            Keyframe {
                frame: 0
                value: 435
            }

            Keyframe {
                frame: 1002
                value: 435
            }

            Keyframe {
                frame: 2002
                value: 968
            }
        }

        KeyframeGroup {
            target: logonobackground
            property: "height"
            Keyframe {
                frame: 0
                value: 211
            }

            Keyframe {
                frame: 1002
                value: 211
            }

            Keyframe {
                frame: 2002
                value: 79
            }
        }

        KeyframeGroup {
            target: hopefully
            property: "opacity"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                frame: 1002
                value: 0
            }

            Keyframe {
                frame: 2002
                value: 0.11
            }
        }

        KeyframeGroup {
            target: headerbox
            property: "height"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                frame: 1002
                value: 0
            }

            Keyframe {
                frame: 2002
                value: 143
            }
        }

        KeyframeGroup {
            target: headerbox
            property: "opacity"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                frame: 1002
                value: 0
            }

            Keyframe {
                frame: 2002
                value: 1
            }
        }

        KeyframeGroup {
            target: startPlanning
            property: "x"
            Keyframe {
                frame: 0
                value: 1920
            }

            Keyframe {
                frame: 1334
                value: 1920
            }

            Keyframe {
                frame: 2002
                value: 1399
            }
        }

        KeyframeGroup {
            target: startPlanning
            property: "opacity"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                frame: 1334
                value: 0
            }

            Keyframe {
                frame: 2002
                value: 1
            }
        }

        KeyframeGroup {
            target: exitApp
            property: "x"
            Keyframe {
                frame: 0
                value: 1920
            }

            Keyframe {
                frame: 1335
                value: 1920
            }

            Keyframe {
                frame: 2003
                value: 1399
            }
        }

        KeyframeGroup {
            target: exitApp
            property: "opacity"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                frame: 1335
                value: 0
            }

            Keyframe {
                frame: 2003
                value: 1
            }
        }
    }

    Timeline {
        id: openingTimeline2
        animations: [
            TimelineAnimation {
                id: timelineAnimation1
                loops: 1
                duration: 1000
                running: false
                to: 1000
                from: -2
            }
        ]
        enabled: false
        startFrame: 0
        endFrame: 1000
    }

    Image {
        id: logonobackground
        x: 1253
        y: 968
        width: 642
        height: 79
        source: "images/logo-no-background.png"
        fillMode: Image.PreserveAspectFit
    }

    RectangleItem {
        id: calendar
        x: -1060
        y: 287

        Text {
            id: calendartext
            x: 95
            y: -160
            text: qsTr("Text")
            font.pixelSize: 12
        }
    }

    Rectangle {
        id: thisWeek
        x: -1060
        y: 470
        width: 200
        height: 200
        color: "#ffffff"
    }

    Rectangle {
        id: thisDay
        x: -1060
        y: 719
        width: 200
        height: 200
        color: "#ffffff"
    }

    SliderMenu {
        id: sliderMenu
        x: -639
        y: 1097
    }

    SButton {
        id: sButton
        x: -312
        y: -121

        Connections {
            target: sButton
            onClicked: background.state = "MainMenu"
        }
    }

    states: [
        State {
            name: "Opening"

            PropertyChanges {
                target: openingTimeline
                enabled: true
            }

            PropertyChanges {
                target: timelineAnimation
                running: true
            }

            PropertyChanges {
                target: logonobackground
                x: 1253
                y: 435
                width: 1709
                height: 211
                visible: true
            }

            PropertyChanges {
                target: openingTimeline2
            }

            PropertyChanges {
                target: timelineAnimation1
                running: true
            }

            PropertyChanges {
                target: startPlanning
                x: 1920
                opacity: 0
                visible: true
            }

            PropertyChanges {
                target: exitApp
                opacity: 0
                visible: true
            }

            PropertyChanges {
                target: welcome
                visible: false
            }

            PropertyChanges {
                target: hopefully
                x: 0
                y: 0
                opacity: 0
                visible: true
            }

            PropertyChanges {
                target: background
                color: "#272727"
            }

            PropertyChanges {
                target: headerbox
                y: 1080
                height: 0
                opacity: 0
                color: "#1d1d1d"
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
            }

            PropertyChanges {
                target: calendartext
                x: 8
                y: 60
                width: 150
                height: 58
            }
        },

        State {
            name: "StartMenu"

            PropertyChanges {
                target: startPlanning
                x: 1399
                y: 719
                visible: true
                text: "Start Planning"
                state: "normal"
            }

            PropertyChanges {
                target: background
                color: "#272727"
            }

            PropertyChanges {
                target: openingTimeline
            }

            PropertyChanges {
                target: timelineAnimation
                running: true
            }

            PropertyChanges {
                target: openingTimeline2
                enabled: false
            }

            PropertyChanges {
                target: timelineAnimation1
                running: false
            }

            PropertyChanges {
                target: welcome
                x: 1422
                y: 35
                text: qsTr("Welcome")
            }

            PropertyChanges {
                target: hopefully
                x: 0
                y: 0
            }

            PropertyChanges {
                target: logonobackground
                x: 1253
                y: 968
            }

            PropertyChanges {
                target: headerbox
                y: 937
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.rightMargin: 0
            }

            PropertyChanges {
                target: exitApp
                x: 1399
                y: 828
            }
        },
        State {
            name: "MainMenu"

            PropertyChanges {
                target: openingTimeline2
                enabled: false
            }

            PropertyChanges {
                target: timelineAnimation1
                running: false
            }

            PropertyChanges {
                target: hopefully
                visible: false
            }

            PropertyChanges {
                target: startPlanning
                visible: false
            }

            PropertyChanges {
                target: exitApp
                visible: false
            }

            PropertyChanges {
                target: welcome
                visible: false
            }

            PropertyChanges {
                target: calendar
                x: 61
                y: 48
                width: 1109
                height: 503
                strokeColor: "#787878"
                fillColor: "#373737"
            }

            PropertyChanges {
                target: calendartext
                x: 161
                y: 179
                width: 518
                height: 208
                color: "#ffffff"
                text: qsTr("Calendar")
                font.pixelSize: 50
            }

            PropertyChanges {
                target: thisWeek
                x: 1253
                y: 55
                width: 504
                height: 496
                color: "#5c5c5c"
                border.color: "#929292"
            }

            PropertyChanges {
                target: thisDay
                x: 52
                y: 621
                width: 1469
                height: 288
                color: "#777777"
                border.color: "#e7e7e7"
            }

            PropertyChanges {
                target: addOption
                x: 1569
                y: 621
                width: 288
                height: 288
            }

            PropertyChanges {
                target: pathView
                x: -1115
                y: 1700
                visible: false
            }

            PropertyChanges {
                target: sliderMenu
                x: 1468
                y: 8
                state: "Closed"
            }
        },

        State {
            name: "State2"

            PropertyChanges {
                target: startPlanning
                visible: false
                text: "Start Planning"
            }

            PropertyChanges {
                target: exitApp
                visible: false
            }

            PropertyChanges {
                target: background
                color: "#272727"
            }

            PropertyChanges {
                target: pathView
                x: -6
                y: 8
                width: 1920
                height: 1072
            }

            PropertyChanges {
                target: hopefully
                visible: false
            }

            PropertyChanges {
                target: welcome
                visible: false
            }

            PropertyChanges {
                target: openingTimeline
                enabled: false
            }

            PropertyChanges {
                target: timelineAnimation
                running: false
            }

            PropertyChanges {
                target: openingTimeline2
                enabled: false
            }

            PropertyChanges {
                target: timelineAnimation1
                running: false
            }

            PropertyChanges {
                target: thisDay
                x: -1060
                y: 731
            }

            PropertyChanges {
                target: calendar
                x: -1060
                y: 281
            }

            PropertyChanges {
                target: text2
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            PropertyChanges {
                target: sButton
                x: 29
                y: 14
                width: 387
                height: 63
                text: "Go Back"
            }
        }    ]
}



/*##^##
Designer {
    D{i:0}D{i:25;invisible:true}
}
##^##*/
