

DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

TEMPLATE = app
TARGET = Clifford2d

VERSION = 1.00

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets


OBJECTS_DIR = ./objects
MOC_DIR     = ./moc
RCC_DIR     = ./rcc
DESTDIR     = .

CONFIG(release, debug|release) {
    CONFIG += optimize_full
}



CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


linux-g++ {
    CONFIG += thread

    # VARIABLES
    isEmpty(PREFIX):PREFIX = /usr/local
    BINDIR = $$PREFIX/bin
    DATADIR = $$PREFIX/share/clifford2d

    desktop.path = $$DATADIR
    desktop.files += meta/linux/$${TARGET}.desktop

    icon128.path = $$DATADIR
    icon128.files += icons/$${TARGET}.png

    target.path = $$BINDIR

    # MAKE INSTALL
    INSTALLS += target desktop icon128



# issues with OpenCascade
QMAKE_CXXFLAGS_WARN_ON += -Wno-deprecated-declarations


}


SOURCES += \
    attractor2d.cpp \
    main.cpp \
    xflwidgets/floatedit.cpp \
    xflwidgets/intedit.cpp \
    xflwidgets/numedit.cpp \
    xflwidgets/wt_globals.cpp

HEADERS += \
    attractor2d.h \
    xflwidgets/floatedit.h \
    xflwidgets/intedit.h \
    xflwidgets/numedit.h \
    xflwidgets/wt_globals.h

RESOURCES += \
    icons.qrc

