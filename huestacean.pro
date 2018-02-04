#################
#################
# todo:
# per-OS and/or env-based lib settings, if I decide to care
# move to cmake?
#################
#################

QT += quick
QT += network
CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += main.cpp \
    hue.cpp \
    huestacean.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    hue.h \
    huestacean.h

DISTFILES += \
    README.md \
    LICENSE \
    apache-2.0.txt \
    lgpl-3.txt \
    license-screen_capture_lite.txt

#Advapi32 for crypto requirements for mbedtls
LIBS +=  -lAdvapi32

#mbedtls
LIBS += -LC:/mbedtls-mbedtls-2.6.1/visualc/VS2010/x64/Debug/ -lmbedTLS
INCLUDEPATH += C:/mbedtls-mbedtls-2.6.1/include

#screen capture lite
LIBS += -LC:/hueproj/screen_capture_lite-14.0.7/lib -ldwmapi -lGdi32 -lUser32 -lscreen_capture_lite_d
INCLUDEPATH += C:/hueproj/screen_capture_lite-14.0.7/include