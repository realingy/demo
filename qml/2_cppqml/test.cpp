#include "test.h"
#include <QTimer>
#include <QDebug>

Test::Test(QObject *parent) : QObject(parent)
    , m_text(QString("Defualt"))
    , m_value(0)
{
    QTimer::singleShot(5000, this, [this] {
        QString text("Changed");
        setText(text);
    });
#if 0
    QTimer timer;
    timer.setInterval(1000);
    timer.setSingleShot(true);
    connect(&timer, &QTimer::timeout, this, [this] {
        QString text("Changed");
        setText(text);
//        m_value++;
//        QString text = QString::number(m_value);
//        setText(text);
    });
#endif
}

QString Test::getText()
{
    return m_text;
//    QString text("Second");
//    setText(text);
}

void Test::setText(QString text)
{
    qDebug() << "@#@%$%^&&*&*(*";
    m_text = text;
    emit sigText(m_text);
}


