#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "messageboard.h"
#include <QQmlContext>
int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    messageBoard msg;

    QQmlApplicationEngine engine;

    QQmlContext * rootContex = engine.rootContext();
    rootContex->setContextProperty("msgBoard", &msg);


    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
