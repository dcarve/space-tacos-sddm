import QtQuick
import QtQuick.Window
import QtMultimedia

Item {
    readonly property real s: Screen.height / 768
    anchors.fill: parent

    MediaPlayer {
        id: mediaplayer
        source: "bg.mp4"
        autoPlay: true
        loops: MediaPlayer.Infinite
        videoOutput: videoOutput
        Component.onCompleted: player.play()
    }

    VideoOutput {
        id: videoOutput
        anchors.fill: parent
        fillMode: VideoOutput.PreserveAspectCrop
        z: -500
    }
}



// import QtQuick
// import QtMultimedia

// Item {
//     anchors.fill: parent

//     MediaPlayer {
//         id: player // Make sure this ID matches what you are calling on line 15!
//         source: "bg.mp4"
//         autoPlay: true
//         loops: MediaPlayer.Infinite
//         audioOutput: AudioOutput {
//             muted: true // Good practice for SDDM backgrounds
//         }
//         videoOutput: videoOutput
//     }

//     VideoOutput {
//         id: videoOutput
//         anchors.fill: parent
//         fillMode: VideoOutput.PreserveAspectCrop
//     }
// }