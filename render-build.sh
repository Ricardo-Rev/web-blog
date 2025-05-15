#!/usr/bin/env bash

# Actualiza los repositorios e instala las dependencias necesarias para dlib
echo "🛠️ Instalando dependencias del sistema..."
apt-get update && apt-get install -y \
    build-essential \
    cmake \
    libopenblas-dev \
    liblapack-dev \
    libx11-dev \
    libgtk-3-dev \
    libboost-python-dev \
    libboost-system-dev \
    libboost-thread-dev \
    libjpeg-dev \
    libpng-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Instala las dependencias de Python
echo "🐍 Instalando dependencias de Python..."
pip install --no-cache-dir -r requirements.txt

echo "✅ Instalación completa"
