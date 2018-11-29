#include "jogo.h"
#include <stdlib.h>
#include <time.h>
#include <QObject>
#include <QSignalMapper>
//#include "QInputDialog"
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
    this->jogadas = 0;
    this->tempo = 0;
    this->name = "";
    this->timer.start();
    shuffle();
    pos1=getValue(0,0);
    pos2=getValue(0,1);
    pos3=getValue(0,2);
    pos4=getValue(0,3);
    pos5=getValue(1,0);
    pos6=getValue(1,1);
    pos7=getValue(1,2);
    pos8=getValue(1,3);
    pos9=getValue(2,0);
    pos10=getValue(2,1);
    pos11=getValue(2,2);
    pos12=getValue(2,3);
    pos13=getValue(3,0);
    pos14=getValue(3,1);
    pos15=getValue(3,2);
    pos16=getValue(3,3);
    vitoria = false;
}

void Jogo::change(int num)
{

  qDebug ("%d",num);
  //this->shuffle();
  //emit positChanged();


  //std::this_thread::sleep_for(std::chrono::seconds(1));

  int lin=0,col=0;

  this->jogadas += 1;
  emit movechanged();

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
  checkchanges();
   return;
}

else if(this->posit[linu][col]==16 && linu != lin)
{

  this->posit[linu][col] = this->posit[lin][col];
  this->posit[lin][col]=16;
  checkchanges();
    return;
}

else if(this->posit[lin][colr]==16 && colr != col)
{

  this->posit[lin][colr] = this->posit[lin][col];
  this->posit[lin][col]=16;
  checkchanges();
    return;
}

else if(this->posit[lin][coll]==16 && coll != col)
{

  this->posit[lin][coll] = this->posit[lin][col];
  this->posit[lin][col]=16;
  checkchanges();
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
  if (vitoria!=status)
  {
  vitoria = status;
  emit winchanged();
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
    emit timechanged();
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

    orderjog.append(this->getMoves());
    ordertem.append(this->getTime()/1000);
    mapjog.insert(this->name,this->getMoves());
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



int Jogo::getpos1()const
{
    return pos1;
}


int Jogo::getpos2()const
{
    return pos2;
}


int Jogo::getpos3()const
{
    return pos3;
}


int Jogo::getpos4()const
{
    return pos4;
}


int Jogo::getpos5()const
{
    return pos5;
}


int Jogo::getpos6()const
{
    return pos6;
}


int Jogo::getpos7()const
{
    return pos7;
}


int Jogo::getpos8()const
{
    return pos8;
}


int Jogo::getpos9()const
{
    return pos9;
}


int Jogo::getpos10()const
{
    return pos10;
}


int Jogo::getpos11()const
{
    return pos11;
}


int Jogo::getpos12()const
{
    return pos12;
}


int Jogo::getpos13()const
{
    return pos13;
}


int Jogo::getpos14()const
{
    return pos14;
}


int Jogo::getpos15()const
{
    return pos15;
}


int Jogo::getpos16()const
{
    return pos16;
}

void Jogo::checkchanges()
{

    if (pos1!=getValue(0,0))
    {
      pos1=getValue(0,0);
      emit _1changed();
    }
    if (pos2!=getValue(0,1))
    {
      pos2=getValue(0,1);
      emit _2changed();
    }
    if (pos3!=getValue(0,2))
    {
      pos3=getValue(0,2);
      emit _3changed();
    }
    if (pos4!=getValue(0,3))
    {
      pos4=getValue(0,3);
      emit _4changed();
    }
    if (pos5!=getValue(1,0))
    {
      pos5=getValue(1,0);
      emit _5changed();
    }
    if (pos6!=getValue(1,1))
    {
      pos6=getValue(1,1);
      emit _6changed();
    }
    if (pos7!=getValue(1,2))
    {
      pos7=getValue(1,2);
      emit _7changed();
    }
    if (pos8!=getValue(1,3))
    {
      pos8=getValue(1,3);
      emit _8changed();
    }
    if (pos9!=getValue(2,0))
    {
      pos9=getValue(2,0);
      emit _9changed();
    }
    if(pos10!=getValue(2,1))
    {
    pos10=getValue(2,1);
    emit _10changed();
    }
    if(pos11!=getValue(2,2))
    {
    pos11=getValue(2,2);
    emit _11changed();
    }
    if(pos12!=getValue(2,3))
    {
    pos12=getValue(2,3);
    emit _12changed();
    }
    if(pos13!=getValue(3,0))
    {
    pos13=getValue(3,0);
    emit _13changed();
    }
    if(pos14!=getValue(3,1))
    {
    pos14=getValue(3,1);
    emit _14changed();
    }
    if(pos15!=getValue(3,2))
    {
    pos15=getValue(3,2);
    emit _15changed();
    }
    if(pos16!=getValue(3,3))
    {
    pos16=getValue(3,3);
    emit _16changed();
    }

    checkV();
    setTime();
}

void Jogo::programexit()
{

}


void Jogo::readfile()
{
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

orderjog.append(this->getMoves());
ordertem.append(this->getTime()/1000);
mapjog.insert(this->name,this->getMoves());
maptem.insert(this->name,this->getTime()/1000);

rjog.open(QIODevice::ReadWrite | QIODevice::Text);
if (!rjog.isOpen()){
    qDebug()<<"não abriu";
    return;
}

QTextStream in(&rjog);

while (!in.atEnd()){
line = in.readLine();
}

recjogs = line;
emit recjogschanged();

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
}

rectems = line;
emit rectemschanged();

rtem.close();
}

QString Jogo::getrecjogs()
{
    return recjogs;
}

QString Jogo::getrectems()
{
    return rectems;
}
