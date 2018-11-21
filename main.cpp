#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "jogo.h"
#include "backend.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<Jogo>("jogo.backend", 1, 0, "Jogo");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
