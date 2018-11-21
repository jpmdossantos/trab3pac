#ifndef INTERFACE_H
#define INTERFACE_H

#include <QMainWindow>
#include "jogo.h"
#include <QSignalMapper>
#include <QPushButton>
#include "windialog.h"
#include <QTime>

namespace Ui {
class Interface;
}

class Interface : public QMainWindow
{
    Q_OBJECT

public:
    explicit Interface(QWidget *parent = nullptr);
    ~Interface();

    void conecta();
    void winSequence();



public slots:
    void refresh();

private:
    Ui::Interface *ui;
    Jogo jogo;
    QSignalMapper *m;
    Jogo *puzzle;
    winDialog winscr;
    bool won;
};

#endif // INTERFACE_H
