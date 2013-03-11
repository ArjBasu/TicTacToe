#ifndef AI_H
#define AI_H
#include <QObject>
#include<QDebug>
#include <QApplication>

class AI: public QObject
{
    Q_OBJECT
protected:
    int **board;
public:
    int decider(int mark);
    int stopfork();
    int patternmatch(int f, int s , int t, int mark);
    Q_INVOKABLE void setPosition(int i,int j,int mark){ board[i][j]=mark;}
    Q_INVOKABLE int winner(int mark);
    void initialise();
    Q_INVOKABLE int checkfull();
    AI(QObject *parent = 0):QObject (parent) {}
    Q_INVOKABLE void print();
    Q_INVOKABLE int play(int randommode);


};

#endif // AI_H
