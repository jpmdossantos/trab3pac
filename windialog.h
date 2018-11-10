#ifndef WINDIALOG_H
#define WINDIALOG_H

#include <QDialog>
#include <QTime>
#include <QString>


namespace Ui {
class winDialog;
}

class winDialog : public QDialog
{
    Q_OBJECT

public:
    explicit winDialog(QWidget *parent = nullptr);
    ~winDialog();
    Ui::winDialog *ui;
    void setTime(int t);
    void setMoves(int m);
    int getTime();
    int getMoves();
    QString getName();
public slots:
    void setName();
 private:
    int time;
    int moves;
    QString name;
};

#endif // WINDIALOG_H
