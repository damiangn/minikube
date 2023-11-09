# Utilizamos la imagen base de Ubuntu
FROM ubuntu:latest

# Actualizamos los repositorios e instalamos Python3 y nano
RUN apt-get update && \
    apt-get install -y python3 && \
    apt-get install -y nano

# Instalamos pip
RUN apt-get install -y python3-pip

# Instalamos las bibliotecas FastAPI y Uvicorn
RUN python3 -m pip install fastapi uvicorn

# Establecemos el directorio de trabajo en /app
WORKDIR /app

# Copiamos el archivo .py desde el sistema host al contenedor
COPY main.py /app/

# Comando que se ejecutará cuando se inicie el contenedor
#CMD ["uvicorn", "servidor:app", "--host", "0.0.0.0", "--port", "8001"]

EXPOSE 8001
