# QPLCsim.pro 2009-12-05

QT += widgets
TARGET = PLCsim
TEMPLATE = app
CONFIG += c++11

INCLUDEPATH += ../../VirtualPLC
DEPENDPATH += ../../VirtualPLC

SOURCES += main.cpp \
    mainwindow.cpp \
    QLineNumberBar.cpp \
    QScriptEditor.cpp \
    QPlcDialog.cpp \
    QPlcReadY.cpp \
    QLed.cpp \
    QSyntaxHL.cpp
HEADERS += mainwindow.h \
    QLineNumberBar.h \
    QScriptEditor.h \
    QPlcDialog.h \
    QPlcReadY.h \
    QLed.h \
    AppInfo.h \
    QSyntaxHL.h
FORMS += mainwindow.ui
RESOURCES += plcsim.qrc

unix {
    CONFIG(debug, debug|release) {
        LIBS += -L../../_Debug/VirtualPLC -lVirtualPLCdebug
        PRE_TARGETDEPS += ../../_Debug/VirtualPLC/libVirtualPLCdebug.a
    }
    CONFIG(release, debug|release) {
        LIBS += -L../../_Release/VirtualPLC -lVirtualPLC
        PRE_TARGETDEPS += ../../_Release/VirtualPLC/libVirtualPLC.a
    }
}