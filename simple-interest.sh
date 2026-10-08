#!/bin/bash

echo "Basit Faiz Hesaplayıcı"
echo "----------------------"

read -p "Ana para: " principal
read -p "Faiz oranı (%): " rate
read -p "Süre (yıl): " time

interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
total=$(echo "scale=2; $principal + $interest" | bc)

echo ""
echo "Hesaplanan faiz: $interest"
echo "Toplam tutar: $total"
