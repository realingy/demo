#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "test.h"

//cpp和qml之间的通信
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<Test>("RType", 1, 0, "Test");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
