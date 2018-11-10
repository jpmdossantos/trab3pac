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

private:
    int size;
    int posit[4][4];
    int win[4][4];
    QTime timer;
    int jogadas;
    int tempo;
    QString name;



public:
    explicit Jogo(QObject *parent = nullptr);
    bool checkV();
    int getValue(int lin, int col);
    int getLin(int val);
    int getCol(int val);
    int getTime();
    int getMoves();
    void setTime();
    void setName(QString n);
    void communication();

public slots:
    void change(int num);
    void shuffle();
    void shuffleeasy();
  //  void debuga(int num);

signals:
    void positChanged();


};

#endif // JOGO_H
