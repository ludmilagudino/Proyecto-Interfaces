FROM python:3.9.7

WORKDIR /src

# Copia el archivo requirements.txt primero
COPY src/requirements.txt .

# Instala las dependencias desde el archivo requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto del código
COPY src/ /src

# Comando para ejecutar la aplicación
ENTRYPOINT ["python", "app.py"]
