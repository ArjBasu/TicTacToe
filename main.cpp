#include <QtGui/QApplication>
#include <QDeclarativeItem>
#include <QDeclarativeEngine>
#include <QDeclarativeContext>
#include "qmlapplicationviewer.h"
#include "AI.h"

int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));

    QDeclarativeView view;
    AI playBoard;
    playBoard.initialise();
    view.rootContext()->setContextProperty("ticTacToe", &playBoard);
    view.setSource(QUrl::fromLocalFile("qml/SampleProject/main.qml"));
    view.setWindowTitle("TicTacToe");
    view.show();

    //QObject *object = view.rootObject();
    //if (!object) return -1;
    //QObject *matter = object->findChild<QObject *>("vbar1");
    //if(!matter) return -1;

    //QVariant value1=22;
    //QMetaObject::invokeMethod(object,"setValue",Q_ARG(QVariant, value1));

    return app->exec();
}
