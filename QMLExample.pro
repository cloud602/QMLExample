
CONFIG += app_bundle
TEMPLATE=app
TARGET=QMLExample


# Please do not modify the following two lines. Required for deployment.
include(qmlapplicationviewer/qmlapplicationviewer.pri)
qtcAddDeployment()

# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += src/main.cpp \
    src/eclass.cpp

HEADERS += \
    src/eclass.h

RESOURCES += \  
    resources.qrc

MOC_DIR = ./build
OBJECTS_DIR = ./build
RCC_DIR = ./build

