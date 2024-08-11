# Usar una imagen base oficial de Python
FROM python:3.9-slim

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar el archivo de requisitos y luego instalarlos
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar todo el código fuente a la imagen del contenedor
COPY . .

# Exponer el puerto en el que la aplicación estará disponible
EXPOSE 5000

# Definir el comando de inicio de la aplicación
CMD ["python", "src/main.py"]
