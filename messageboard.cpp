#include "messageboard.h"

messageBoard::messageBoard(QObject *parent) : QObject(parent)
{

    try {
        RedisClient = new Redis ("tcp://redis-19837.c228.us-central1-1.gce.cloud.redislabs.com:19837");
        RedisClient->auth("123456");
    } catch (Error e)

    {
        qDebug()<<Q_FUNC_INFO<<"init redis failed";
        qDebug()<<Q_FUNC_INFO<<e.what();
    }
    timer = new QTimer (this);
    connect(timer,SIGNAL(timeout()),this,SLOT(Myslot()));
    timer->start(1000);

}

void messageBoard::Myslot()
{
    Value = QString::fromStdString(RedisClient->get(QString("test").toUtf8().constData()).value());
   // qDebug()<<Data;

    if (Value == "On")
    {
      qDebug()<<"On";
    }
    else
    {
      qDebug()<<"off";
    }
}
void messageBoard::on()
{
    RedisClient->set("test", "On");
    qDebug()<<"active";
}
void messageBoard::off()
{
    RedisClient->set("test", "Off");
    qDebug()<<"diactive";
}

