#include "interface.h"
#include "ui_interface.h"
#include "jogo.h"
#include <QSignalMapper>
#include "QInputDialog"
#include<QGridLayout>
#include "windialog.h"
#include <QDebug>


Interface::Interface(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::Interface),jogo(),winscr()

{
    ui->setupUi(this);
    this->puzzle= &jogo;
    puzzle->shuffle();

    this->refresh();

    m = new QSignalMapper(this);

    this->conecta();
    ui->b16->setVisible(false);
    this->won = false;

    connect(puzzle, SIGNAL(positChanged()),this, SLOT(refresh()));


}


Interface::~Interface()
{
    delete ui;
}


void Interface::refresh()
{
    ui->gridLayout->addWidget(ui->b1,jogo.getLin(1), jogo.getCol(1));

    ui->gridLayout->addWidget(ui->b2,jogo.getLin(2), jogo.getCol(2));

    ui->gridLayout->addWidget(ui->b3,jogo.getLin(3), jogo.getCol(3));

    ui->gridLayout->addWidget(ui->b4,jogo.getLin(4), jogo.getCol(4));

    ui->gridLayout->addWidget(ui->b5,jogo.getLin(5), jogo.getCol(5));

    ui->gridLayout->addWidget(ui->b6,jogo.getLin(6), jogo.getCol(6));

    ui->gridLayout->addWidget(ui->b7,jogo.getLin(7), jogo.getCol(7));

    ui->gridLayout->addWidget(ui->b8,jogo.getLin(8), jogo.getCol(8));

    ui->gridLayout->addWidget(ui->b9,jogo.getLin(9), jogo.getCol(9));

    ui->gridLayout->addWidget(ui->b10,jogo.getLin(10), jogo.getCol(10));

    ui->gridLayout->addWidget(ui->b11,jogo.getLin(11), jogo.getCol(11));

    ui->gridLayout->addWidget(ui->b12,jogo.getLin(12), jogo.getCol(12));

    ui->gridLayout->addWidget(ui->b13,jogo.getLin(13), jogo.getCol(13));

    ui->gridLayout->addWidget(ui->b14,jogo.getLin(14), jogo.getCol(14));

    ui->gridLayout->addWidget(ui->b15,jogo.getLin(15), jogo.getCol(15));

    ui->gridLayout->addWidget(ui->b16,jogo.getLin(16), jogo.getCol(16));

    bool status = puzzle->checkV();
    if (status && !(this->won)){
    this->won = true;
    this->winSequence();
    }
}


void Interface::conecta()
{

connect(ui->b1, SIGNAL(clicked()),m, SLOT(map()));
m->setMapping(ui->b1, 1);
connect(m, SIGNAL(mapped(int)), puzzle, SLOT(change(int)));


connect(ui->b2, SIGNAL(clicked()),m, SLOT(map()));
m->setMapping(ui->b2, 2);
connect(m, SIGNAL(mapped(int)), puzzle, SLOT(change(int)));

connect(ui->b3, SIGNAL(clicked()),m, SLOT(map()));
m->setMapping(ui->b3, 3);
connect(m, SIGNAL(mapped(int)), puzzle, SLOT(change(int)));

connect(ui->b4, SIGNAL(clicked()),m, SLOT(map()));
m->setMapping(ui->b4, 4);
connect(m, SIGNAL(mapped(int)), puzzle, SLOT(change(int)));

connect(ui->b5, SIGNAL(clicked()),m, SLOT(map()));
m->setMapping(ui->b5, 5);
connect(m, SIGNAL(mapped(int)), puzzle, SLOT(change(int)));

connect(ui->b6, SIGNAL(clicked()),m, SLOT(map()));
m->setMapping(ui->b6, 6);
connect(m, SIGNAL(mapped(int)), puzzle, SLOT(change(int)));

connect(ui->b7, SIGNAL(clicked()),m, SLOT(map()));
m->setMapping(ui->b7, 7);
connect(m, SIGNAL(mapped(int)), puzzle, SLOT(change(int)));

connect(ui->b8, SIGNAL(clicked()),m, SLOT(map()));
m->setMapping(ui->b8, 8);
connect(m, SIGNAL(mapped(int)), puzzle, SLOT(change(int)));

connect(ui->b9, SIGNAL(clicked()),m, SLOT(map()));
m->setMapping(ui->b9, 9);
connect(m, SIGNAL(mapped(int)), puzzle, SLOT(change(int)));

connect(ui->b10, SIGNAL(clicked()),m, SLOT(map()));
m->setMapping(ui->b10, 10);
connect(m, SIGNAL(mapped(int)), puzzle, SLOT(change(int)));

connect(ui->b11, SIGNAL(clicked()),m, SLOT(map()));
m->setMapping(ui->b11, 11);
connect(m, SIGNAL(mapped(int)), puzzle, SLOT(change(int)));

connect(ui->b12, SIGNAL(clicked()),m, SLOT(map()));
m->setMapping(ui->b12, 12);
connect(m, SIGNAL(mapped(int)), puzzle, SLOT(change(int)));

connect(ui->b13, SIGNAL(clicked()),m, SLOT(map()));
m->setMapping(ui->b13, 13);
connect(m, SIGNAL(mapped(int)), puzzle, SLOT(change(int)));

connect(ui->b14, SIGNAL(clicked()),m, SLOT(map()));
m->setMapping(ui->b14, 14);
connect(m, SIGNAL(mapped(int)), puzzle, SLOT(change(int)));

connect(ui->b15, SIGNAL(clicked()),m, SLOT(map()));
m->setMapping(ui->b15, 15);
connect(m, SIGNAL(mapped(int)), puzzle, SLOT(change(int)));

}

void Interface::winSequence() {
    this->jogo.setTime();
    int t =this->jogo.getTime();
    this->winscr.setTime(t/1000);
    this->winscr.setMoves(this->jogo.getMoves()/15);
    this->winscr.exec();
    this->jogo.setName(this->winscr.getName());

    this->jogo.communication();
    QApplication::quit();

}
