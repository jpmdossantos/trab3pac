#include "jogo.h"
#include <stdlib.h>
#include <time.h>
#include <QObject>
#include <QSignalMapper>
#include "QInputDialog"
#include <QTextStream>
#include <QDebug>
#include <QStringList>
#include <QMultiMap>
#include <QList>
#include <QtAlgorithms>

using namespace std;

Jogo::Jogo(QObject *parent) : QObject(parent)
{
    this->size = 4;
    int start = 1;
    for (int i=0;i<=3;i++){
      for (int j=0;j<=3;j++){
        this->posit[i][j]=start;
        start++;
      }
    }

     start = 1;
    for (int i=0;i<=3;i++){
      for (int j=0;j<=3;j++){
        this->win[i][j]=start;
        start++;
      }
    }
    this->jogadas = 15;
    this->tempo = 0;
    this->name = "";
    this->timer.start();
}

void Jogo::change(int num)
{
/*
  qDebug ("%d",num);
  this->shuffle();
  emit positChanged();


  std::this_thread::sleep_for(std::chrono::seconds(1));
  */
  int lin=0,col=0;

  this->jogadas += 1;

  for (int i=0;i<=3;i++){
    for (int j=0;j<=3;j++){
      if(this->posit[i][j]==num){
      lin = i;
      col = j;
      }
    }
  }
  int colr = col;
  int coll = col;
  int linu = lin;
  int lind = lin;

  if (colr < 3){
  colr=colr+1;
  }

  if (coll > 0){
  coll=coll-1;
  }

  if (linu > 0){
  linu=linu-1;
  }

  if (lind < 3){
  lind=lind+1;
  }


if (this->posit[lind][col]==16 && lind != lin)
{

  this->posit[lind][col] = this->posit[lin][col];
  this->posit[lin][col]=16;
  emit positChanged();
    return;
}

else if(this->posit[linu][col]==16 && linu != lin)
{

  this->posit[linu][col] = this->posit[lin][col];
  this->posit[lin][col]=16;
  emit positChanged();
    return;
}

else if(this->posit[lin][colr]==16 && colr != col)
{

  this->posit[lin][colr] = this->posit[lin][col];
  this->posit[lin][col]=16;
  emit positChanged();
    return;
}

else if(this->posit[lin][coll]==16 && coll != col)
{

  this->posit[lin][coll] = this->posit[lin][col];
  this->posit[lin][col]=16;
  emit positChanged();
    return;
}

else
{
return;
}



}

void Jogo::shuffle(){

  srand (time(NULL));
  int vezes = rand () %50 + 500;
  int i = 0;
  int aux;

  while (i <= vezes){

  int l1 = rand() %4;
  int c1 = rand() %4;
  int l2 = rand() %4;
  int c2 = rand() %4;

  aux = this->posit[l1][c1];
  this->posit[l1][c1] = this->posit[l2][c2];
  this->posit[l2][c2] = aux;

  i++;
}


}


bool Jogo::checkV(){
  bool status = true;
  for (int i=0;i<=3;i++){
    for (int j=0;j<=3;j++){
      if(this->posit[i][j]!=this->win[i][j]){
      status = false;
      }
    }
  }
  return status;
}

int Jogo::getValue(int lin, int col)
{
    return this->posit[lin][col];
}



int Jogo::getLin(int val)
{
for (int i=0;i<=3;i++){
    for (int j=0;j<=3;j++){
      if(this->posit[i][j]==val){
      return i;
      }
    }
  }
return 0;
}


int Jogo::getCol(int val)
{
for (int i=0;i<=3;i++){
    for (int j=0;j<=3;j++){
      if(this->posit[i][j]==val){
      return j;
      }
    }
  }

return 0;
}

void Jogo::shuffleeasy(){
    this->posit[0][0]=1;
    this->posit[0][1]=2;
    this->posit[0][2]=3;
    this->posit[0][3]=4;
    this->posit[1][0]=5;
    this->posit[1][1]=6;
    this->posit[1][2]=7;
    this->posit[1][3]=8;
    this->posit[2][0]=9;
    this->posit[2][1]=10;
    this->posit[2][2]=11;
    this->posit[2][3]=12;
    this->posit[3][0]=13;
    this->posit[3][1]=14;
    this->posit[3][2]=16;
    this->posit[3][3]=15;
}

int Jogo::getTime()
{
  return this->tempo;
}
int Jogo::getMoves(){
  return this->jogadas;
}
void Jogo::setTime(){
  this->tempo = timer.elapsed();
}

void Jogo::setName(QString n){
  this->name = n;
}

void Jogo::communication(){
    QFile rjog("recordjog.txt");
    QFile rtem("recordtem.txt");
    QString line;
    QStringList parts;
    QList <int> orderjog;
    QList <int> ordertem;
    QMultiMap<QString,int> mapjog;
    QMultiMap<QString,int> maptem;
    int temp=0;
    QString lastkey;

    orderjog.append(this->getMoves()/15);
    ordertem.append(this->getTime()/1000);
    mapjog.insert(this->name,this->getMoves()/15);
    maptem.insert(this->name,this->getTime()/1000);

    rjog.open(QIODevice::ReadWrite | QIODevice::Text);
    if (!rjog.isOpen()){
        qDebug()<<"não abriu";
        return;
    }

    QTextStream in(&rjog);

    while (!in.atEnd()){
    line = in.readLine();
    parts = line.split(": ");
    orderjog.append(parts[1].toInt());
    mapjog.insert(parts[0],parts[1].toInt());
    }
    qSort(orderjog);
    rjog.close();

    rjog.open(QIODevice::ReadWrite | QIODevice::Truncate | QIODevice::Text);
    if (!rjog.isOpen()){
        qDebug()<<"não abriu";
        return;
    }

    while(!orderjog.isEmpty())
    {
        temp = orderjog.takeFirst();

        foreach(const QString &key, mapjog.keys())
        {
            QList<int> values = mapjog.values(key);
            for (int i = 0; i < values.size();++i)
                if (temp == values[i])
                    {
                        in << key << ": " << temp<<endl;
                        lastkey = key;
                        temp = NULL;
                    }
        }
    }

    rjog.close();

    rtem.open(QIODevice::ReadWrite | QIODevice::Text);
    if (!rtem.isOpen()){
        qDebug()<<"não abriu";
        return;
    }

    QTextStream in2(&rtem);

    while (!in2.atEnd()){
    line = in2.readLine();
    parts = line.split(": ");
    ordertem.append(parts[1].toInt());
    maptem.insert(parts[0],parts[1].toInt());
    }
    qSort(ordertem);
    rtem.close();

    rtem.open(QIODevice::ReadWrite | QIODevice::Truncate | QIODevice::Text);
    if (!rtem.isOpen()){
        qDebug()<<"não abriu";
        return;
    }

    while(!ordertem.isEmpty())
    {
        temp = ordertem.takeFirst();
        foreach(const QString &key, maptem.keys())
        {
            QList<int> values = maptem.values(key);
            for (int i = 0; i < values.size();++i)
                if (temp == values[i])
                    {
                        in2 << key << ": " << temp<<endl;
                        lastkey = key;
                        temp = NULL;
                    }
        }
    }

    rjog.close();



}
