FROM python:3.8

EXPOSE 5000
# Copie les fichiers de l'application dans le conteneur
COPY app.py .
COPY Helpers.py .
COPY main.py .
COPY templates/* .
COPY requirements.txt .

# Installer les paquets de l'application
RUN pip install -r requirements.txt

# Exécutez l'application quand le conteneur démarre
CMD ["python", "main.py"]
