TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
    MonoTest.cpp

# Include paths
unix {
    INCLUDEPATH += /usr/include/mono-2.0/
}

# Library paths
unix {
    LIBS += -L"/usr/lib/"
    QMAKE_LFLAGS += -Wl,--export-dynamic -Xlinker -Map=output.map
}

# Libraries
LIBS += -lmono-2.0

HEADERS += \
    MonoTest.h
