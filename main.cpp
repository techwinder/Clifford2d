#include "attractor2d.h"

#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    Attractor2d w;
    w.show();
    return a.exec();
}
