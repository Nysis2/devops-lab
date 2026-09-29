# devops-lab

Projet d'apprentissage DevOps : Docker, Terraform, Kubernetes, Ansible, CI/CD et AWS.

## Application

API FastAPI dans `app/`.

### Installation

```powershell
cd app
py -m venv .venv
.\.venv\Scripts\Activate.ps1
pip install -r requirements-dev.txt
```

### Lancer l'app

```powershell
uvicorn main:app --reload
```

Puis ouvrir http://127.0.0.1:8000

### Lancer les tests

```powershell
pytest
```

### Docker

```powershell
docker build -t devops-lab-app:dev app
docker run --rm -p 8080:8000 devops-lab-app:dev
```
