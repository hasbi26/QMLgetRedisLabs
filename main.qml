import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.13

Window {
    visible: true
    width: 640
    height: 480
    color: "#293d49"
    title: qsTr("Smart World")

    Text {
        id: value
        x: 29
        y: 426
        font.bold: true
        font.pointSize: 20
        clip: false

    }


    Timer { interval: 1000; running: true; repeat: true;
        onTriggered: value.text = msgBoard.invalue()

    }

    Rectangle {
        id: rectangle
        x: 199
        y: 426
        width: 30
        height: width
        radius: width*0.5
        border.color: "#564b4b"
    }


    Timer { interval: 1000; running: true; repeat: true;
        onTriggered: rectangle.color = msgBoard.vColor()

    }

    Text {
        id: element
        x: 29
        y: 19
        color: "#f7f6f6"
        text: qsTr("Smart Home")
        font.bold: true
        font.pixelSize: 20
    }

    Text {
        id: jam
        x: 55
        y: 44
        color: "#f74343"
       // text: Qt.formatTime(new Date(),"hh:mm:ss")
        font.bold: true
        font.pixelSize: 22
    }
    Timer { interval: 1000; running: true; repeat: true;
        onTriggered: jam.text = Qt.formatTime(new Date(),"hh:mm:ss") ;
    }

    Text {
        id: tanggal
        x: 29
        y: 80
        color: "#f74343"
        text: new Date().toLocaleDateString(Qt.locale("id_ID"))
        font.bold: true
        font.pixelSize: 14
    }

    Switch {
        id: element1
        x: 55
        y: 206
        rotation: 180
        onCheckedChanged: {
            if (checked == false)
            {
                //mytimer.off()
                msgBoard.off()
            }
            else
            {
                //mytimer.on()
                msgBoard.on()
            }
        }
    }

    Text {
        id: element2
        x: 66
        y: 186
        color: "#fcfbfb"
        text: qsTr("On/Off")
        font.bold: true
        font.pixelSize: 15
    }




}
