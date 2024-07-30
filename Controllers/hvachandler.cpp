#include "hvachandler.h"

HVACHandler::HVACHandler(QObject *parent)
    : QObject{parent},m_targetTemperature(70)
{}

int HVACHandler::targetTemperature() const
{
    return m_targetTemperature;
}

void HVACHandler::setTargetTemperature(int newTargetTemperature)
{
    if (m_targetTemperature == newTargetTemperature)
        return;
    m_targetTemperature = newTargetTemperature;
    emit targetTemperatureChanged();
}

void HVACHandler::incrementTargetTemperature(const int &target)
{
    int newTargetTemp = m_targetTemperature + target;
    setTargetTemperature(newTargetTemp);
}
