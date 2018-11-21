#include "windialog.h"
#include "ui_windialog.h"
#include<QDebug>

winDialog::winDialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::winDialog)
{
    ui->setupUi(this);

    connect(ui->okButton, SIGNAL(clicked()),this, SLOT(setName()));
    this->time = 0;
    this->moves = 0;
}

winDialog::~winDialog()
{
    delete ui;
}
void winDialog::setTime(int t)
 {
     this->time = t;
    ui->timelabel->setText(QString::number(t));
 }

int winDialog::getTime()
{
    return this->time;
}

void winDialog::setMoves(int mov)
 {
     this->moves =mov;
    ui->moveslabel->setText(QString::number(mov));
 }

int winDialog::getMoves()
{
    return this->moves;
}

QString winDialog::getName(){
  return this->ui->entryname->text();
}

void winDialog::setName(){
  this->name = ui->entryname->text();
    this->destroy();
}
