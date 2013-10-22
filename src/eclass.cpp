#include "eclass.h"

eclass::eclass(QObject *parent) :
    QObject(parent)
{
}

QString eclass::hello()
{
    return QString("Hello From CPP!");
}

QString eclass::hello2()
{
    return QString("Hello2 From CPP!");
}
