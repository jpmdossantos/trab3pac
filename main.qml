import QtQuick 2.6
import QtQuick.Controls 2.0
import io.qt.examples.backend 1.0

ApplicationWindow {
    id: root
    width: 300
    height: 300
    visible: true

    BackEnd {
        id: backend
    }
    Image {
        source: "qrc:///basesquare.png"
        anchors.centerIn: parent
    }

}
