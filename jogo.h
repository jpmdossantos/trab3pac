#ifndef JOGO_H
#define JOGO_H

#include <QObject>
#include<QTime>
#include<string.h>
#include <QString>
#include <QFile>

class Jogo : public QObject
{
Q_OBJECT

Q_PROPERTY(int tempo READ getTime NOTIFY timechanged)
Q_PROPERTY(int jogadas READ getMoves NOTIFY movechanged)
Q_PROPERTY(QString rectems READ getrecjogs NOTIFY recjogschanged)
Q_PROPERTY(QString recjogs READ getrectems NOTIFY rectemschanged)
Q_PROPERTY(bool vitoria READ checkV NOTIFY winchanged)
Q_PROPERTY(int pos1 READ getpos1 NOTIFY _1changed)
Q_PROPERTY(int pos2 READ getpos2 NOTIFY _2changed)
Q_PROPERTY(int pos3 READ getpos3 NOTIFY _3changed)
Q_PROPERTY(int pos4 READ getpos4 NOTIFY _4changed)
Q_PROPERTY(int pos5 READ getpos5 NOTIFY _5changed)
Q_PROPERTY(int pos6 READ getpos6 NOTIFY _6changed)
Q_PROPERTY(int pos7 READ getpos7 NOTIFY _7changed)
Q_PROPERTY(int pos8 READ getpos8 NOTIFY _8changed)
Q_PROPERTY(int pos9 READ getpos9 NOTIFY _9changed)
Q_PROPERTY(int pos10 READ getpos10  NOTIFY _10changed)
Q_PROPERTY(int pos11 READ getpos11 NOTIFY _11changed)
Q_PROPERTY(int pos12 READ getpos12 NOTIFY _12changed)
Q_PROPERTY(int pos13 READ getpos13 NOTIFY _13changed)
Q_PROPERTY(int pos14 READ getpos14 NOTIFY _14changed)
Q_PROPERTY(int pos15 READ getpos15 NOTIFY _15changed)
Q_PROPERTY(int pos16 READ getpos16 NOTIFY _16changed)

private:
    int pos1;
    int pos2;
    int pos3;
    int pos4;
    int pos5;
    int pos6;
    int pos7;
    int pos8;
    int pos9;
    int pos10;
    int pos11;
    int pos12;
    int pos13;
    int pos14;
    int pos15;
    int pos16;
    QString recjogs;
    QString rectems;





    int size;
    int posit[4][4];
    int win[4][4];
    QTime timer;
    int jogadas;
    int tempo;
    bool vitoria;
    QString name;




public:
    explicit Jogo(QObject *parent = nullptr);

    int getLin(int val);
    int getCol(int val);


    void setTime();





public slots:
    void programexit();
    void communication();
    void shuffle();
    void shuffleeasy();
    int getValue(int lin, int col);
    int getTime();
    int getMoves();
    bool checkV();
    void change(int num);
    void readfile();

        void setName(QString n);

    int getpos1()const;

        int getpos2()const;
        int getpos3()const;
        int getpos4()const;
        int getpos5()const;
        int getpos6()const;
        int getpos7()const;
        int getpos8()const;
        int getpos9()const;
        int getpos10()const;
    int getpos11()const;
    int getpos12()const;
    int getpos13()const;
    int getpos14()const;
    int getpos15()const;
    int getpos16()const;

    QString getrecjogs();
    QString getrectems();

    void checkchanges();
signals:
    void positChanged();
    void _1changed();
    void _2changed();
    void _3changed();
    void _4changed();
    void _5changed();
    void _6changed();
    void _7changed();
    void _8changed();
    void _9changed();
    void _10changed();
    void _11changed();
    void _12changed();
    void _13changed();
    void _14changed();
    void _15changed();
    void _16changed();
    void winchanged();
    void movechanged();
    void timechanged();
    void namechanged();
    void recjogschanged();
    void rectemschanged();

};

#endif // JOGO_H
