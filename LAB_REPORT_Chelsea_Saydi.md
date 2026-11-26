# Lab 10 Report - Chelsea Saydi

## Changes Made

- Created `app.py` with a greeting function.
- Added an unittest test in `tests/test_app.py`.
- Added `flake8`, `pytest`, `coverage`, and `bandit` dependencies.
- Added a Jenkins pipeline named `Python-CI-CD`.
- Added Setup, Lint, Test, Coverage, Security Scan, and Deploy stages.
- Added `deploy.sh` for a basic local deployment.
- Generated JUnit test and XML coverage outputs in the pipeline.

## Jenkins Configuration

- Repository: https://github.com/chelseasaydi/jenkins_project
- Job: `Python-CI-CD`
- Jenkinsfile: `Jenkinsfile_Chelsea_Saydi`
- Branch: `main`

## Expected Pipeline Output

Each stage should complete successfully:

1. Setup creates `venv` and installs dependencies.
2. Lint validates `app.py` and tests with `flake8`.
3. Test runs pytest and creates `test-results.xml`.
4. Coverage runs pytest under coverage.py and creates `coverage.xml`.
5. Security Scan analyzes `app.py` with Bandit.
6. Deploy copies `app.py` into the `deploy/` directory.

The local verification output is recorded below after running the commands.

## Local Verification

Run from the repository root with `python3 -m venv venv` and the dependencies in
`requirements.txt`. The test suite imports `app.py` through the project root,
configured in `pytest.ini`.

Verified output:

```text
Hello, World from Chelsea Saydi!
1 passed
TOTAL: 82% coverage
Bandit: 0 issues identified
Deployment complete: deploy/app.py
```
