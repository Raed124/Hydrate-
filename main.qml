import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 600
    title: "Hydration Boys!!"

    // Property to be updated from Python code
    property string path: "./0.png"

    Rectangle {
        anchors.fill: parent

        Image {
            id: animatedImage
            anchors.fill: parent
            source: path
            fillMode: Image.PreserveAspectCrop
        }
    }

    // Watch for changes to the 'path' property and update the image
    onPathChanged: {
        animatedImage.source = path
    }
}
