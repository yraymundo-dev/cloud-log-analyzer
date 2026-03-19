#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASE_DIR="$(dirname "$SCRIPT_DIR")"
FECHA=$(date +%Y-%m-%d_%H-%M-%S)
echo $BASE_DIR
echo $FECHA
echo "BASE_DIR = $BASE_DIR"
echo "FECHA = $FECHA"

mkdir -p "$BASE_DIR/output"

echo "===== MONITOREO DEL SISTEMA =====" >> $BASE_DIR/output/reporte_$FECHA.txt
date >> $BASE_DIR/output/reporte_$FECHA.txt

echo "====================================" >> $BASE_DIR/output/reporte_$FECHA.txt
echo "REPORTE DEL SISTEMA - $FECHA" >> $BASE_DIR/output/reporte_$FECHA.txt
echo "====================================" >> $BASE_DIR/output/reporte_$FECHA.txt


echo "Uso de CPU:" >> $BASE_DIR/output/reporte_$FECHA.txt
top -b -n1 | grep "Cpu(s)" >> $BASE_DIR/output/reporte_$FECHA.txt

echo "====================================" >> $BASE_DIR/output/reporte_$FECHA.txt
echo "REPORTE DEL SISTEMA - $FECHA" >> $BASE_DIR/output/reporte_$FECHA.txt
echo "====================================" >> $BASE_DIR/output/reporte_$FECHA.txt
echo "Uso de memoria:" >> $BASE_DIR/output/reporte_$FECHA.txt
free -h >> $BASE_DIR/output/reporte_$FECHA.txt

echo "====================================" >> $BASE_DIR/output/reporte_$FECHA.txt
echo "REPORTE DEL SISTEMA - $FECHA" >> $BASE_DIR/output/reporte_$FECHA.txt
echo "====================================" >> $BASE_DIR/output/reporte_$FECHA.txt

echo "Procesos activos:" >> $BASE_DIR/output/reporte_$FECHA.txt
ps aux --sort=-%cpu | head -n 5 >> $BASE_DIR/output/reporte_$FECHA.txt

echo "==========================================" >> $BASE_DIR/output/reporte_$FECHA.txt

CPU=$(top -b -n1 | grep "Cpu(s)" | awk '{print $2}' | cut -d. -f1)

echo "CPU actual: $CPU%"

if [ "$CPU" -gt 70 ]; then
	echo " ALERTA: CPU ALTA ($CPU%)"
        echo " ALERTA: CPU ALTA ($CPU%)" >> $BASE_DIR/output/reporte_$FECHA.txt
fi
