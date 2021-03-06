import QtQuick 2.6
import QtQuick.Controls 2.0
import QtGraphicalEffects 1.0
import io.qt.examples.backend 1.0

ApplicationWindow {
    id: root
    width: 610
    height: 610
    visible: true

    BackEnd {
        id: backend
    }


    Rectangle {
    id: outer1
    width: (root.width - 50)/4
    height: (root.height - 50)/4
    visible: true
    border.color: "#63B2F6"
    border.width: 5
    radius: 10
    anchors {left: parent.left ; leftMargin: 10; top: parent.top ;topMargin:10;}
        Rectangle
         {
           anchors.centerIn: parent
           width: outer1.width - 10
           height: outer1.height -10

            RadialGradient {
                 anchors.fill: parent
                 gradient: Gradient
                 {
                     GradientStop { position: 0.0; color: "#2795F6" }
                     GradientStop { position: 0.5; color: outer1.border.color }
                  }

                  Text{
                       id: text1
                       anchors{centerIn: parent}
                       text: "1"
                       font.family: "Helvetica"
                       font.pointSize: outer1.height/3.5
                       color: "white"
                    }
        }
        }

    }
    Rectangle {
    id: outer2
    width: outer1.width
    height: outer1.height
    visible: true
    border.color: "#63B2F6"
    border.width: 5
	radius: 10
    anchors {left: outer1.right ; leftMargin: 10 ; top: parent.top ; topMargin:10}
        Rectangle
         {
           anchors.centerIn: parent
           width: outer2.width - 10
           height: outer2.height -10

            RadialGradient {
                 anchors.fill: parent
                 gradient: Gradient
                 {
                     GradientStop { position: 0.0; color: "#2795F6" }
                     GradientStop { position: 0.5; color: outer2.border.color }
                  }

                  Text{
                      id: text2
                       anchors{centerIn: parent}
                       text: "2"
                       font.family: "Helvetica"
                       font.pointSize: text1.font.pointSize
                       color: "white"
                    }
        }
        }

    }

    Rectangle {
    id: outer3
    width: outer1.width
    height: outer1.height
    visible: true
    border.color: "#63B2F6"
	border.width: 5
	radius: 10
    anchors {left: outer2.right ; leftMargin: 10; top: parent.top ; topMargin: 10;}
   
        Rectangle
         {
           anchors.centerIn: parent
           width: outer3.width - 10
           height: outer3.height -10

            RadialGradient {
                 anchors.fill: parent
                 gradient: Gradient
                 {
                     GradientStop { position: 0.0; color: "#2795F6" }
                     GradientStop { position: 0.5; color: outer3.border.color }
                  }

                  Text{
                      id: text3
                       anchors{centerIn: parent}
                       text: "3"
                       font.family: "Helvetica"
                       font.pointSize: text1.font.pointSize
                       color: "white"
                    }
        }
        }

    }
    Rectangle {
    id: outer4
    width: outer1.width
    height: outer1.height
    visible: true
    border.color: "#63B2F6"
	border.width: 5
	radius: 10
    anchors {left: outer3.right ; leftMargin: 10 ; top: parent.top ; topMargin:10 ;}
  
        Rectangle
         {
           anchors.centerIn: parent
           width: outer4.width - 10
           height: outer4.height -10

            RadialGradient {
                 anchors.fill: parent
                 gradient: Gradient
                 {
                     GradientStop { position: 0.0; color: "#2795F6" }
                     GradientStop { position: 0.5; color: outer4.border.color }
                  }

                  Text{
                       id: text4
                       anchors{centerIn: parent}
                       text: "4"
                       font.family: "Helvetica"
                       font.pointSize: text1.font.pointSize
                       color: "white"
                    }
        }
        }

    }

    Rectangle {
    id: outer5
    width: outer1.width
    height: outer1.height
    visible: true
    border.color: "#63B2F6"
	border.width: 5
    anchors {left: parent.left ; leftMargin: 10 ; top: outer1.bottom ; topMargin:10 ;}
	radius: 10

        Rectangle
         {
           anchors.centerIn: parent
           width: outer5.width - 10
           height: outer5.height -10

            RadialGradient {
                 anchors.fill: parent
                 gradient: Gradient
                 {
                     GradientStop { position: 0.0; color: "#2795F6" }
                     GradientStop { position: 0.5; color: outer5.border.color }
                  }

                  Text{
                      id: text5
                       anchors{centerIn: parent}
                       text: "5"
                       font.family: "Helvetica"
                       font.pointSize: text1.font.pointSize
                       color: "white"
                    }
        }
        }

    }
    Rectangle {
    id: outer6
    width: outer1.width
    height: outer1.height
    visible: true
    border.color: "#63B2F6"
	border.width: 5
    anchors {left: outer5.right ; leftMargin: 10 ; top: outer2.bottom ; topMargin:10 ;}
	radius: 10

        Rectangle
         {
           anchors.centerIn: parent
           width: outer6.width - 10
           height: outer6.height -10

            RadialGradient {
                 anchors.fill: parent
                 gradient: Gradient
                 {
                     GradientStop { position: 0.0; color: "#2795F6" }
                     GradientStop { position: 0.5; color: outer6.border.color }
                  }

                  Text{
                      id: text6
                       anchors{centerIn: parent}
                       text: "6"
                       font.family: "Helvetica"
                       font.pointSize: text1.font.pointSize
                       color: "white"
                    }
        }
        }

    }


    Rectangle {
    id: outer7
    width: outer1.width
    height: outer1.height
    visible: true
    border.color: "#63B2F6"
	border.width: 5
    anchors {left: outer6.right ; leftMargin: 10 ; top: outer3.bottom ; topMargin:10 ;}
	radius: 10

        Rectangle
         {
           anchors.centerIn: parent
           width: outer7.width - 10
           height: outer7.height -10

            RadialGradient {
                 anchors.fill: parent
                 gradient: Gradient
                 {
                     GradientStop { position: 0.0; color: "#2795F6" }
                     GradientStop { position: 0.5; color: outer7.border.color }
                  }

                  Text{
                      id: text7
                       anchors{centerIn: parent}
                       text: "7"
                       font.family: "Helvetica"
                       font.pointSize: text1.font.pointSize
                       color: "white"
                    }
        }
        }

    }

    Rectangle {
    id: outer8
    width: outer1.width
    height: outer1.height
    visible: true
    border.color: "#63B2F6"
	border.width: 5
    anchors {left: outer7.right ; leftMargin: 10 ; top: outer4.bottom ; topMargin:10 ;}
	radius: 10

        Rectangle
         {
           anchors.centerIn: parent
           width: outer8.width - 10
           height: outer8.height -10

            RadialGradient {
                 anchors.fill: parent
                 gradient: Gradient
                 {
                     GradientStop { position: 0.0; color: "#2795F6" }
                     GradientStop { position: 0.5; color: outer8.border.color }
                  }

                  Text{
                      id: text8
                       anchors{centerIn: parent}
                       text: "8"
                       font.family: "Helvetica"
                       font.pointSize: text1.font.pointSize
                       color: "white"
                    }
        }
        }

    }

    Rectangle {
    id: outer9
    width: outer1.width
    height: outer1.height
    visible: true
    border.color: "#63B2F6"
	border.width: 5
    anchors {left: parent.left ; leftMargin: 10 ; top: outer5.bottom ; topMargin:10 ;}
	radius: 10

        Rectangle
         {
           anchors.centerIn: parent
           width: outer9.width - 10
           height: outer9.height -10

            RadialGradient {
                 anchors.fill: parent
                 gradient: Gradient
                 {
                     GradientStop { position: 0.0; color: "#2795F6" }
                     GradientStop { position: 0.5; color: outer9.border.color }
                  }

                  Text{
                      id: text9
                       anchors{centerIn: parent}
                       text: "9"
                       font.family: "Helvetica"
                       font.pointSize: text1.font.pointSize
                       color: "white"
                    }
        }
        }

    }

    Rectangle {
    id: outer10
    width: outer1.width
    height: outer1.height
    visible: true
    border.color: "#63B2F6"
	border.width: 5
    anchors {left: outer9.right ; leftMargin: 10 ; top: outer6.bottom ; topMargin:10 ;}
	radius: 10

        Rectangle
         {
           anchors.centerIn: parent
           width: outer10.width - 10
           height: outer10.height -10

            RadialGradient {
                 anchors.fill: parent
                 gradient: Gradient
                 {
                     GradientStop { position: 0.0; color: "#2795F6" }
                     GradientStop { position: 0.5; color: outer10.border.color }
                  }

                  Text{
                      id: text10
                       anchors{centerIn: parent}
                       text: "10"
                       font.family: "Helvetica"
                       font.pointSize: text1.font.pointSize
                       color: "white"
                    }
        }
        }

    }
    Rectangle {
    id: outer11
    width: outer1.width
    height: outer1.height
    visible: true
    border.color: "#63B2F6"
	border.width: 5
    anchors {left: outer10.right ; leftMargin: 10 ; top: outer7.bottom ; topMargin:10 ;}
	radius: 10

        Rectangle
         {
           anchors.centerIn: parent
           width: outer11.width - 10
           height: outer11.height -10

            RadialGradient {
                 anchors.fill: parent
                 gradient: Gradient
                 {
                     GradientStop { position: 0.0; color: "#2795F6" }
                     GradientStop { position: 0.5; color: outer11.border.color }
                  }

                  Text{
                      id: text11
                       anchors{centerIn: parent}
                       text: "11"
                       font.family: "Helvetica"
                       font.pointSize: text1.font.pointSize
                       color: "white"
                    }
        }
        }

    }


    Rectangle {
    id: outer12
    width: outer1.width
    height: outer1.height
    visible: true
    border.color: "#63B2F6"
	border.width: 5
    anchors {left: outer11.right ; leftMargin: 10 ; top: outer8.bottom ; topMargin:10 ;}
	radius: 10

        Rectangle
         {
           anchors.centerIn: parent
           width: outer12.width - 10
           height: outer12.height -10

            RadialGradient {
                 anchors.fill: parent
                 gradient: Gradient
                 {
                     GradientStop { position: 0.0; color: "#2795F6" }
                     GradientStop { position: 0.5; color: outer12.border.color }
                  }

                  Text{
                      id: text12
                       anchors{centerIn: parent}
                       text: "12"
                       font.family: "Helvetica"
                       font.pointSize: text1.font.pointSize
                       color: "white"
                    }
        }
        }

    }

    Rectangle {
    id: outer13
    width: outer1.width
    height: outer1.height
    visible: true
    border.color: "#63B2F6"
	border.width: 5
    anchors {left: parent.left ; leftMargin: 10 ; top: outer9.bottom ; topMargin:10 ;}
	radius: 10

        Rectangle
         {
           anchors.centerIn: parent
           width: outer13.width - 10
           height: outer13.height -10

            RadialGradient {
                 anchors.fill: parent
                 gradient: Gradient
                 {
                     GradientStop { position: 0.0; color: "#2795F6" }
                     GradientStop { position: 0.5; color: outer13.border.color }
                  }

                  Text{
                      id: text13
                       anchors{centerIn: parent}
                       text: "13"
                       font.family: "Helvetica"
                       font.pointSize: text1.font.pointSize
                       color: "white"
                    }
        }
        }

    }
    Rectangle {
    id: outer14
    width: outer1.width
    height: outer1.height
    visible: true
    border.color: "#63B2F6"
	border.width: 5
    anchors {left: outer13.right ; leftMargin: 10 ; top: outer10.bottom ; topMargin:10 ;}
	radius: 10

        Rectangle
         {
           anchors.centerIn: parent
           width: outer14.width - 10
           height: outer14.height -10

            RadialGradient {
                 anchors.fill: parent
                 gradient: Gradient
                 {
                     GradientStop { position: 0.0; color: "#2795F6" }
                     GradientStop { position: 0.5; color: outer14.border.color }
                  }

                  Text{
                      id: text14
                       anchors{centerIn: parent}
                       text: "14"
                       font.family: "Helvetica"
                       font.pointSize: text1.font.pointSize
                       color: "white"
                    }
        }
        }

    }

    Rectangle {
    id: outer15
    width: outer1.width
    height: outer1.height
    visible: true
    border.color: "#63B2F6"
	border.width: 5
    anchors {left: outer14.right ; leftMargin: 10 ; top: outer11.bottom ; topMargin:10 ;}
	radius: 10

        Rectangle
         {
           anchors.centerIn: parent
           width: outer15.width - 10
           height: outer15.height -10

            RadialGradient {
                 anchors.fill: parent
                 gradient: Gradient
                 {
                     GradientStop { position: 0.0; color: "#2795F6" }
                     GradientStop { position: 0.5; color: outer15.border.color }
                  }

                  Text{
                      id: text15
                       anchors{centerIn: parent}
                       text: "14"
                       font.family: "Helvetica"
                       font.pointSize: text1.font.pointSize
                       color: "white"
                    }
        }
        }

    }

    Rectangle {
    id: outer16
    width: outer1.width
    height: outer1.height
    visible: false
    border.color: "#63B2F6"
	border.width: 5
    anchors {left: outer15.right ; leftMargin: 10 ; top: outer12.bottom ; topMargin:10 ;}
	radius: 10

        Rectangle
         {
           anchors.centerIn: parent
           width: outer16.width - 10
           height: outer16.height -10

            RadialGradient {
                 anchors.fill: parent
                 gradient: Gradient
                 {
                     GradientStop { position: 0.0; color: "#2795F6" }
                     GradientStop { position: 0.5; color: outer15.border.color }
                  }

                  Text{
                      id: text16
                       anchors{centerIn: parent}
                       text: "16"
                       font.family: "Helvetica"
                       font.pointSize: text1.font.pointSize
                       color: "white"
                    }
        }
        }

    }




}
