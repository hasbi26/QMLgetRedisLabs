#ifndef MESSAGEBOARD_H
#define MESSAGEBOARD_H

#include <QObject>
#include "redis++.h"
#include <QtCore>
#include <QDebug>
class messageBoard : public QObject
{
    Q_OBJECT
public:
    explicit messageBoard(QObject *parent = nullptr);
       QTimer * timer;
       QString Value;
       QString ValueColor;
Q_INVOKABLE QString invalue()
{
qDebug()<<"Value is " << Value;
return Value;
}

       Q_INVOKABLE QString vColor()
       {
       if (Value == "On")
       {
           ValueColor = "Yellow";
       }
       else
       {
           ValueColor = "#564b4b";
       }
       return ValueColor;
       }


private :
    Redis * RedisClient;
signals:

public slots :
  void Myslot();
  void on();
  void off();

};

#endif // MESSAGEBOARD_H
