# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia los archivos de requerimientos al contenedor
COPY requirements.txt .

# Instala las dependencias de Python
RUN pip install --no-cache-dir -r requirements.txt

# Copia los archivos del script al contenedor
COPY . .

# Establece el punto de entrada del contenedor para que acepte argumentos
ENTRYPOINT ["python", "vedirectmqtt.py"]