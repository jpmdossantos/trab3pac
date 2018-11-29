import QtQuick 2.6
import QtQuick.Controls 2.0
import QtGraphicalEffects 1.0
import jogo.backend 1.0

ApplicationWindow {
    id: root
    width: 610
    height: 610
    visible: true
    function checkvisibility()
    {
        if (text1.text == 16)
        {
        outer1.visible = false
        }
        else
        {
        outer1.visible = true
        }

        if (text2.text == 16)
        {
        outer2.visible = false
        }
        else
        {
        outer2.visible = true
        }

        if (text3.text == 16)
        {
        outer3.visible = false
        }
        else
        {
        outer3.visible = true
        }

        if (text4.text == 16)
        {
        outer4.visible = false
        }
        else
        {
        outer4.visible = true
        }
        if (text5.text == 16)
        {
        outer5.visible = false
        }
        else
        {
        outer5.visible = true
        }
        if (text6.text == 16)
        {
        outer6.visible = false
        }
        else
        {
        outer6.visible = true
        }
        if (text7.text == 16)
        {
        outer7.visible = false
        }
        else
        {
        outer7.visible = true
        }
        if (text8.text == 16)
        {
        outer8.visible = false
        }
        else
        {
        outer8.visible = true
        }
        if (text9.text == 16)
        {
        outer9.visible = false
        }
        else
        {
        outer9.visible = true
        }
        if (text10.text == 16)
        {
        outer10.visible = false
        }
        else
        {
        outer10.visible = true
        }

        if (text14.text == 16)
        {
        outer14.visible = false
        }
        else
        {
        outer14.visible = true
        }

        if (text13.text == 16)
        {
        outer13.visible = false
        }
        else
        {
        outer13.visible = true
        }


        if (text11.text == 16)
        {
        outer11.visible = false
        }
        else
        {
        outer11.visible = true
        }

        if (text12.text == 16)
        {
        outer12.visible = false
        }
        else
        {
        outer12.visible = true
        }

        if (text15.text == 16)
        {
        outer15.visible = false
        }
        else
        {
        outer15.visible = true
        }

        if (text16.text == 16)
        {
        outer16.visible = 0
        }
        else
        {
        outer16.visible = 1
        }

    }



    Rectangle
    {
        id:gamescreen
        visible: !startscreen.visible && !backend.vitoria
        anchors.fill: parent
    Jogo {
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
           MouseArea {
             anchors.fill: parent
             propagateComposedEvents: true
             onClicked: {
                 backend.change(parseInt(text1.text))
                 checkvisibility()

             }
           }
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
                       text: backend.pos1
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

           MouseArea {
             anchors.fill: parent
             propagateComposedEvents: true
             onClicked: {
                 backend.change(parseInt(text2.text))
                 checkvisibility()

             }
           }
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
                       text: backend.pos2
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
           MouseArea {
             anchors.fill: parent
             propagateComposedEvents: true
             onClicked: {
                 backend.change(parseInt(text3.text))
                 checkvisibility()

             }
           }
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
                       text: backend.pos3
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

           MouseArea {
             anchors.fill: parent
             propagateComposedEvents: true
             onClicked: {
                 backend.change(parseInt(text4.text))
                 checkvisibility()

             }
           }
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
                       text: backend.pos4
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
           MouseArea {
             anchors.fill: parent
             propagateComposedEvents: true
             onClicked: {
                 backend.change(parseInt(text5.text))
                 checkvisibility()

             }
           }
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
                       text: backend.pos5
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
           MouseArea {
             anchors.fill: parent
             propagateComposedEvents: true
             onClicked: {
                 backend.change(parseInt(text6.text))
                 checkvisibility()

             }
           }
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
                       text: backend.pos6
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
           MouseArea {
             anchors.fill: parent
             propagateComposedEvents: true
             onClicked: {
                 backend.change(parseInt(text7.text))
                 checkvisibility()

             }
           }
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
                       text: backend.pos7
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
           MouseArea {
             anchors.fill: parent
             propagateComposedEvents: true
             onClicked: {
                 backend.change(parseInt(text8.text))
                 checkvisibility()

             }
           }
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
                       text: backend.pos8
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
           MouseArea {
             anchors.fill: parent
             propagateComposedEvents: true
             onClicked: {
                 backend.change(parseInt(text9.text))
                 checkvisibility()

             }
           }
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
                       text: backend.pos9
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
           MouseArea {
             anchors.fill: parent
             propagateComposedEvents: true
             onClicked: {
                 backend.change(parseInt(text10.text))
                 checkvisibility()

             }
           }
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
                       text: backend.pos10
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
           MouseArea {
               anchors.fill: parent
               propagateComposedEvents: true
               onClicked: {
                   backend.change(parseInt(text11.text))
                   console.log("click11")
                   console.log(parseInt(backend.pos11))
                   checkvisibility()

               }
           }


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
                       text: backend.pos11
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
           MouseArea {
               anchors.fill: parent
               propagateComposedEvents: true
               onClicked: {
                   backend.change(parseInt(text12.text))
                   console.log("click12")
                   console.log(parseInt(backend.pos12))
                   checkvisibility()

               }
           }

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
                       text: backend.pos12
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
           MouseArea {
             anchors.fill: parent
             propagateComposedEvents: true
             onClicked: {
                 backend.change(parseInt(text13.text))
                 checkvisibility()

             }
           }
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
                       text: backend.pos13
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
           MouseArea {
             anchors.fill: parent
             propagateComposedEvents: true
             onClicked: {
                 backend.change(parseInt(text14.text))
                 checkvisibility()

             }
           }
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
                       text: backend.pos14
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
           MouseArea {
             anchors.fill: parent
             propagateComposedEvents: true
             onClicked: {
                 backend.change(parseInt(text15.text))
                 console.log("click15")
                 console.log(parseInt(backend.pos15))
                 checkvisibility()

             }
            }
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
                       text: backend.pos15
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
    visible: true
    border.color: "#63B2F6"
	border.width: 5
    anchors {left: outer15.right ; leftMargin: 10 ; top: outer12.bottom ; topMargin:10 ;}
	radius: 10

        Rectangle
         {
           anchors.centerIn: parent
           width: outer16.width - 10
           height: outer16.height -10
           MouseArea {
             anchors.fill: parent
             propagateComposedEvents: true
             onClicked: {
                 backend.change(parseInt(text16.text))
                 checkvisibility()

             }
}
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
                       text: backend.pos16
                       font.family: "Helvetica"
                       font.pointSize: text1.font.pointSize
                       color: "white"
                    }
        }
        }

    }


}

    Rectangle
    {
        id:startscreen
        visible: true
        anchors.fill: parent
        Rectangle {
        id: startbutton
        width: (root.width - 50)/2
        height: (root.height - 50)/4
        visible: true
        border.color: "#63B2F6"
        border.width: 5
        radius: 10
        anchors {left: parent.left; leftMargin: root.width/3.7; top: parent.top; topMargin: root.height/4.5 }
            Rectangle
             {
               anchors.centerIn: parent
               width: startbutton.width - 10
               height: startbutton.height -10
               MouseArea {
                 anchors.fill: parent
                 propagateComposedEvents: true
                 onClicked: {
                     startscreen.visible = false;
                     checkvisibility();


                 }
               }
                RadialGradient {
                     anchors.fill: parent
                     gradient: Gradient
                     {
                         GradientStop { position: 0.0; color: "#2795F6" }
                         GradientStop { position: 0.5; color: outer1.border.color }
                      }

                      Text{
                           id: textstart
                           anchors{centerIn: parent}
                           text: "Start Game"
                           font.family: "Helvetica"
                           font.pointSize: outer1.height/3.5
                           color: "white"
                        }
            }
            }

        }

        Rectangle {
        id: rankbutton
        width: (root.width - 50)/2
        height: (root.height - 50)/4
        visible: true
        border.color: "#63B2F6"
        border.width: 5
        radius: 10
        anchors {left: startbutton.left;  top: startbutton.bottom; topMargin: 10 }
            Rectangle
             {
               anchors.centerIn: parent
               width: rankbutton.width - 10
               height: rankbutton.height -10
               MouseArea {
                 anchors.fill: parent
                 propagateComposedEvents: true
                 onClicked: {

                    startscreen.visible = false;
                     rankscreen.visible = true;
                     backend.readfile();
                 }
               }
                RadialGradient {
                     anchors.fill: parent
                     gradient: Gradient
                     {
                         GradientStop { position: 0.0; color: "#2795F6" }
                         GradientStop { position: 0.5; color: outer1.border.color }
                      }

                      Text{
                           id: textrank
                           anchors{centerIn: parent}
                           text: "Ranking"
                           font.family: "Helvetica"
                           font.pointSize: outer1.height/3.5
                           color: "white"
                        }
            }
            }

        }
    }

    Rectangle
    {
        id: rankscreen
        visible: false
        anchors.fill: parent
        Text
        {
            id: moverankslabel
            anchors {left: parent.left; leftMargin: 50 ;top:parent.top ;topMargin: 10}
            text: "Jogadas"
            font.family: "Helvetica"
            font.pointSize: parent.height/40
            color: "black"

        }
        Text
        {
            id: moveranks
            anchors {left: moverankslabel.left ;top: moverankslabel.bottom}
            text: backend.recjogs
            font.family: "Helvetica"
            font.pointSize: parent.height/40
            color: "black"

        }

        Text
        {
            id: timerankslabel
            anchors {right: parent.right ;rightMargin: 50 ;top:parent.top ;topMargin: 10}
            text: "Tempo"
            font.family: "Helvetica"
            font.pointSize: parent.height/40
            color: "black"

        }
        Text
        {
            id: timeranks
            anchors {right: timerankslabel.right ;top: timerankslabel.bottom}
            text: backend.recjogs
            font.family: "Helvetica"
            font.pointSize: parent.height/40
            color: "black"

        }


        Rectangle {
        id: backbutton
        width: (root.width - 50)/4
        height: (root.height - 50)/8
        visible: true
        border.color: "#63B2F6"
        border.width: 5
        radius: 10
        anchors {left: parent.left; leftMargin:10 ; bottom: parent.bottom; bottomMargin:10}
            Rectangle
             {
               anchors.centerIn: parent
               width: backbutton.width - 10
               height: backbutton.height -10
               MouseArea {
                 anchors.fill: parent
                 propagateComposedEvents: true
                 onClicked: {
                     rankscreen.visible = false;
                     startscreen.visible = true;


                 }
               }
                RadialGradient {
                     anchors.fill: parent
                     gradient: Gradient
                     {
                         GradientStop { position: 0.0; color: "#2795F6" }
                         GradientStop { position: 0.5; color: outer1.border.color }
                      }

                      Text{
                           id: backtext
                           anchors{centerIn: parent}
                           text: "Back"
                           font.family: "Helvetica"
                           font.pointSize: outer1.height/7
                           color: "white"
                        }
            }
            }

        }
    }

    Rectangle
    {
        id: winscreen
        visible: backend.vitoria
        anchors.fill: parent
        Text
        {
            id: congrats
            anchors.centerIn: parent
            text: "Vitória"
            font.family: "Helvetica"
            font.pointSize: parent.height/10
            color: "black"

        }
        Text
        {
            id: movelabel
            anchors {left: congrats.left ;bottom:congrats.top}
            text: "Jogadas: "
            font.family: "Helvetica"
            font.pointSize: parent.height/40
            color: "black"

        }
        Text
        {
            id: moveqtd
            anchors {left: movelabel.right ;bottom:congrats.top}
            text: backend.jogadas
            font.family: "Helvetica"
            font.pointSize: parent.height/40
            color: "black"

        }

        Text
        {
            id: timelabel
            anchors {left: congrats.left ;bottom:movelabel.top}
            text: "Tempo: "
            font.family: "Helvetica"
            font.pointSize: parent.height/40
            color: "black"

        }
        Text
        {
            id: timeqtd
            anchors {left: timelabel.right ;bottom:movelabel.top}
            text: backend.tempo/1000
            font.family: "Helvetica"
            font.pointSize: parent.height/40
            color: "black"

        }

        TextField {
            id: nameentry
            placeholderText: qsTr("Enter name")

            anchors{left: congrats.left; leftMargin: 10;top: congrats.bottom}
        }

        Rectangle {
        id: exitbutton
        width: (root.width - 50)/4
        height: (root.height - 50)/8
        visible: true
        border.color: "#63B2F6"
        border.width: 5
        radius: 10
        anchors {left:nameentry.left; leftMargin: 30 ;top:nameentry.bottom; topMargin:5}
            Rectangle
             {
               anchors.centerIn: parent
               width: exitbutton.width - 10
               height: exitbutton.height -10
               MouseArea {
                 anchors.fill: parent
                 propagateComposedEvents: true
                 onClicked: {
                backend.setName(nameentry.text);
                backend.communication();
                winscreen.visible = false;
                  Qt.quit();

                 }
               }
                RadialGradient {
                     anchors.fill: parent
                     gradient: Gradient
                     {
                         GradientStop { position: 0.0; color: "#2795F6" }
                         GradientStop { position: 0.5; color: outer1.border.color }
                      }

                      Text{
                           id: exittext
                           anchors{centerIn: parent}
                           text: "ok"
                           font.family: "Helvetica"
                           font.pointSize: outer1.height/7
                           color: "white"
                        }
            }
            }

        }



    }

}
