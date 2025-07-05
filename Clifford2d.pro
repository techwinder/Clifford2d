QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

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

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
