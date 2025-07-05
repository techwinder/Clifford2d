#include "attractor2d.h"

#include <QApplication>
#include <QFile>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    QSettings settings(QSettings::IniFormat, QSettings::UserScope, "Clifford2d");
    Attractor2d::loadSettings(settings);


    Attractor2d w;
    w.show();
    return a.exec();
}
