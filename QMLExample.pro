
CONFIG += app_bundle
TEMPLATE=app
TARGET=QMLExample

# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += main.cpp \
    eclass.cpp

# Please do not modify the following two lines. Required for deployment.
include(qmlapplicationviewer/qmlapplicationviewer.pri)
qtcAddDeployment()

HEADERS += \
    eclass.h

RESOURCES += \  
    resources.qrc

MOC_DIR = ./build
OBJECTS_DIR = ./build
RCC_DIR = ./build

