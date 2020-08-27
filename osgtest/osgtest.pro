#-------------------------------------------------
#
# Project created by QtCreator 2020-08-27T07:43:47
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = osgtest
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

SOURCES += \
        main.cpp \
        mainwindow.cpp

HEADERS += \
        mainwindow.h

FORMS += \
        mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../lib/release/ -losgViewer
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../lib/debug/ -losgViewer
else:unix: LIBS += -L$$PWD/../lib/ -losgViewer

INCLUDEPATH += $$PWD/../include
DEPENDPATH += $$PWD/../include

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../lib/release/ -losgUtil
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../lib/debug/ -losgUtil
else:unix: LIBS += -L$$PWD/../lib/ -losgUtil

INCLUDEPATH += $$PWD/../include
DEPENDPATH += $$PWD/../include

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../lib/release/ -losgDB
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../lib/debug/ -losgDB
else:unix: LIBS += -L$$PWD/../lib/ -losgDB

INCLUDEPATH += $$PWD/../include
DEPENDPATH += $$PWD/../include

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../lib/release/ -losg
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../lib/debug/ -losg
else:unix: LIBS += -L$$PWD/../lib/ -losg

INCLUDEPATH += $$PWD/../include
DEPENDPATH += $$PWD/../include
