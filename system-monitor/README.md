# System Monitor Script

Script de monitoreo desarrollado en Bash para sistemas Linux.
Genera reportes automaticos del estado del sistema y detecta condiciones criticas.

--

## Funcionalidades

- Monitor de uso de CPU
- Monitoreo de memoria RAM
- Conteo de procesos activos
- Generacion automatica de reportes con fecha
- Alertas cuando se superan limites definidos

--

## Tecnologias usadas

- Linux
- Bash scripting
- Git y GitHub

--

## Estructura del proyecto

cloud-lab/
|
|___scripts/
| |___monitor.sh
|
|___Logs/
|___output/
|___README.md

## Como ejecutar

'''bash
chmod +x scripts/monitor.sh
./scripts/monitor.sh

## Automatizacion (cron)

*/5 * * * * /ruta/completa/scripts/monitor.sh

## Objetivo del proyecto

Este proyecto fue desarrollado como parte del aprendizaje en:
- Automatizacion de tareas
- Administracion de sistemas Linux
- Fundamentos de DevOps

## Autor

Yonatan Raymundo


