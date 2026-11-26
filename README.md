# Jenkins Python CI/CD Project

This project demonstrates a Jenkins pipeline for a Python application. The pipeline
sets up a virtual environment, installs dependencies, lints, tests, calculates
code coverage, scans for security issues, and performs a local deployment.

## Run locally

```sh
python3 -m venv venv
. venv/bin/activate
pip install -r requirements.txt
python app.py
pytest
flake8 app.py tests
coverage run -m pytest
coverage report
bandit -r app.py
sh deploy.sh
```

## Jenkins setup

1. Create a Pipeline job named `Python-CI-CD`.
2. Configure Git with `https://github.com/chelsaydi/jenkins_project`.
3. Use `main` as the branch to build.
4. Set the Jenkinsfile path to `Jenkinsfile_Chelsea_Saydi`.
5. Run the pipeline manually or add a webhook for automatic builds.
