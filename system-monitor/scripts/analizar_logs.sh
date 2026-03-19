#!/bin/bash
FECHA=$(date +%Y-%m-%d_%H-%M-%S)

echo "===== ANALISIS DE LOGS =====" > ../output/errores_$FECHA.txt

grep ERROR ../logs/*.log >> ../output/errores_$FECHA.txt

echo "Total de errores encontrados:" >> ../output/errores_$FECHA.txt
grep ERROR ../logs/*.log | wc -l   >> ../output/errores_$FECHA.txt
