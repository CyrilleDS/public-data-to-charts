# Utiliser une image Python officielle comme image de base
FROM python:3.11-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers de votre projet dans le conteneur
COPY . /app/

# Installer les dépendances
RUN pip install --upgrade pip && pip install -r requirements.txt

# Exposer le port 8000 pour Django
EXPOSE 8000

# Commande pour démarrer l'application Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
