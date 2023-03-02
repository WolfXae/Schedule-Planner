

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    id: control
    width: 300
    height: 100
    text: "My Button"
    property alias controlText: control.text

    implicitWidth: Math.max(
                       buttonBackground ? buttonBackground.implicitWidth : 0,
                       textItem.implicitWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(
                        buttonBackground ? buttonBackground.implicitHeight : 0,
                        textItem.implicitHeight + topPadding + bottomPadding)
    leftPadding: 4
    rightPadding: 4

    background: buttonBackground
    Rectangle {
        id: buttonBackground
        implicitWidth: 100
        implicitHeight: 40
        opacity: enabled ? 1 : 0.3
        visible: true
        radius: 25
        border.color: "#09784a4a"
        gradient: Gradient {
            GradientStop {
                id: gradientStop
                position: 0
                color: "#5b5b5b"
            }

            GradientStop {
                id: gradientStop1
                position: 0.96804
                color: "#1a1a1a"
            }
            orientation: Gradient.Vertical
        }
        smooth: true
    }

    contentItem: textItem
    Text {
        id: textItem
        x: 0
        y: 0
        width: 300
        height: 100

        opacity: enabled ? 1.0 : 0.3
        color: "#9dede9"
        text: control.text
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.NoWrap
        font.pointSize: 25
        font.styleName: "Bold"
        font.family: "Tahoma"
    }

    states: [
        State {
            name: "normal"
            when: !control.down

            PropertyChanges {
                target: buttonBackground
                color: "#00000000"
                border.color: "#09047eff"
            }

            PropertyChanges {
                target: textItem
                color: "#9dede9"
            }

            PropertyChanges {
                target: gradientStop
            }
        },
        State {
            name: "down"
            when: control.down
            PropertyChanges {
                target: textItem
                color: "#60bbc0"
                text: control.text
            }

            PropertyChanges {
                target: buttonBackground
                color: "#047eff"
                border.color: "#00000000"
                border.width: 0
            }

            PropertyChanges {
                target: gradientStop
                position: 0
                color: "#464646"
            }

            PropertyChanges {
                target: gradientStop1
                position: 1
                color: "#101010"
            }
        },
        State {
            name: "hover"
            when: control.hovered

            PropertyChanges {
                target: gradientStop
                color: "#434343"
            }

            PropertyChanges {
                target: gradientStop1
                color: "#101010"
            }
        }
    ]
}