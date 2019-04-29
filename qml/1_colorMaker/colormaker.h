#ifndef COLORMAKER_H
#define COLORMAKER_H

#include <QObject>
#include <QColor>

class ColorMaker : public QObject
{
    Q_OBJECT
    Q_ENUMS(GenerateAlgorithm)

    Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
    Q_PROPERTY(QColor timeColor READ timeColor)

public:
    explicit ColorMaker(QObject *parent = nullptr);
    ~ColorMaker();

    enum GenerateAlgorithm {
        RandomRGB,
        RandomRed,
        RandomGreen,
        RandomBlue,
        LinearIncrease
    };

    QColor color() const;
    void setColor(const QColor &color);
    QColor timeColor();

    Q_INVOKABLE GenerateAlgorithm algorithm() const;
    Q_INVOKABLE void setAlgorithm(GenerateAlgorithm algorithm);

protected:
    void timerEvent(QTimerEvent *e);

signals:
    void colorChanged(const QColor color);
    void currentTime(const QString &strTime);

public slots:
    void start();
    void stop();

private:
    GenerateAlgorithm m_algorithm;
    QColor m_currentColor;
    int m_nColorTimer;

};

#endif // COLORMAKER_H
