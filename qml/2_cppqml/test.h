#ifndef TEST_H
#define TEST_H

#include <QObject>

class Test : public QObject
{
    Q_OBJECT
    //暴露给QML
    Q_PROPERTY(QString text READ getText WRITE setText NOTIFY sigText)
public:
    explicit Test(QObject *parent = nullptr);

    Q_INVOKABLE QString getText(); //Q_INVOKABLE暴露给QML
    Q_INVOKABLE void setText(QString text);

signals:
    void sigText(QString text);

public slots:

private:
    QString m_text;
    int m_value;

};

#endif // TEST_H
