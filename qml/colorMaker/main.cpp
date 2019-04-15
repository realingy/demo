#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include "colormaker.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<ColorMaker>("colorMaker", 1, 0, "ColorMaker");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
