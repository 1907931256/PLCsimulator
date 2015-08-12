# VirtualPLC.pro 2014-12-03

QT -= core gui

TEMPLATE = lib
CONFIG += c++11
CONFIG += staticlib

CONFIG(debug, debug|release) {
    TARGET = VirtualPLCdebug
}
CONFIG(release, debug|release) {
    TARGET = VirtualPLC
}

SOURCES += \
    VirtualPLC.cpp \
    Timer.cpp \
    ProcessorConfig.cpp \
    Processor.cpp \
    Memory.cpp \
    Counter.cpp

HEADERS += \
    VirtualPLC.h \
    Timer.h \
    ProcessorConfig.h \
    Processor.h \
    MemoryConfig.h \
    Memory.h \
    FunctionConfig.h \
    Data.h \
    Counter.h \
    PeriodicTask.h \
    LibInfoVPLC.h

#unix {
#    target.path = /usr/lib
#    INSTALLS += target
#}
