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
//Q_PROPERTY(int tempo READ getTime)
//Q_PROPERTY(int jogadas READ getMoves)
//Q_PROPERTY(int pos1 READ getpos1 WRITE checkpos1 NOTIFY positChanged)
//Q_PROPERTY(int pos2 READ getpos2 WRITE checkpos2 NOTIFY positChanged)
//Q_PROPERTY(int pos3 READ getpos3 WRITE checkpos3 NOTIFY positChanged)
//Q_PROPERTY(int pos4 READ getpos4 WRITE checkpos4 NOTIFY positChanged)
//Q_PROPERTY(int pos5 READ getpos5 WRITE checkpos5 NOTIFY positChanged)
//Q_PROPERTY(int pos6 READ getpos6 WRITE checkpos6 NOTIFY positChanged)
//Q_PROPERTY(int pos7 READ getpos7 WRITE checkpos7 NOTIFY positChanged)
//Q_PROPERTY(int pos8 READ getpos8 WRITE checkpos8 NOTIFY positChanged)
//Q_PROPERTY(int pos9 READ getpos9 WRITE checkpos9 NOTIFY positChanged)
//Q_PROPERTY(int pos10 READ getpos10 WRITE checkpos10 NOTIFY positChanged)
Q_PROPERTY(int pos11 READ getpos11)
Q_PROPERTY(int pos12 READ getpos12)
//Q_PROPERTY(int pos13 READ getpos13 NOTIFY _13changed)
//Q_PROPERTY(int pos14 READ getpos14 NOTIFY _14changed)
Q_PROPERTY(int pos15 READ getpos15)
Q_PROPERTY(int pos16 READ getpos16)

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





    int size;
    int posit[4][4];
    int win[4][4];
    QTime timer;
    int jogadas;
    int tempo;
    QString name;




public:
    explicit Jogo(QObject *parent = nullptr);

    int getLin(int val);
    int getCol(int val);


    void setTime();
    void setName(QString n);
    void communication();
    void change(int num);


public slots:

    void shuffle();
    void shuffleeasy();
    int getValue(int lin, int col);
    int getTime();
    int getMoves();
    bool checkV();


    int getpos1()const;
    void checkpos1(const int val);
    int getpos2()const;
    void checkpos2(const int val);
    int getpos3()const;
    void checkpos3(const int val);
    int getpos4()const;
    void checkpos4(const int val);
    int getpos5()const;
    void checkpos5(const int val);
    int getpos6()const;
    void checkpos6(const int val);
    int getpos7()const;
    void checkpos7(const int val);
    int getpos8()const;
    void checkpos8(const int val);
    int getpos9()const;
    void checkpos9(const int val);
    int getpos10()const;
    void checkpos10(const int val);
    int getpos11()const;
    void checkpos11(const int val);
    int getpos12()const;
    void checkpos12(const int val);
    int getpos13()const;
    void checkpos13(const int val);
    int getpos14()const;
    void checkpos14(const int val);
    int getpos15()const;
    void checkpos15(const int val);
    int getpos16()const;
    void checkpos16(const int val);


signals:
    void positChanged();
    void _11changed();
    void _12changed();
    void _13changed();
    void _14changed();
    void _15changed();
    void _16changed();

};

#endif // JOGO_H
