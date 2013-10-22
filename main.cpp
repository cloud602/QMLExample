#include <QtGui/QApplication>
#include <QtDeclarative/QDeclarativeContext>
#include "qmlapplicationviewer.h"
#include "eclass.h"

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));

    QmlApplicationViewer viewer;
    viewer.resize(240,320);
    viewer.setWindowFlags(Qt::FramelessWindowHint | Qt::Dialog);
    viewer.rootContext()->setContextProperty("exampleclass",new eclass);
    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationAuto);
    viewer.setSource(QUrl("qrc:///qml/main.qml"));
    viewer.showExpanded();

    return app->exec();
}
