#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include<Controllers/system.h>
#include<QQmlContext>
#include<Controllers/hvachandler.h>
#include<Controllers/audiocontroller.h>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    System m_systemHandler;
    HVACHandler m_driverHVACHandler;
    HVACHandler m_passengerHVACHandler;
    AudioController m_audioController;

    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty("systemHandler",&m_systemHandler);
    engine.rootContext()->setContextProperty("driverHVAC",&m_driverHVACHandler);
    engine.rootContext()->setContextProperty("passengerHVAC",&m_passengerHVACHandler);
    engine.rootContext()->setContextProperty("audioController",&m_audioController);

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("TeslaInfotainment", "Main");


    return app.exec();
}
