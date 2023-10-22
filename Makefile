PROJECT_NAME = $(shell basename "$(PWD)")
PYTHON_VERSION = 3.9.6

dev:
	streamlit run app.py --server.port 8080
install:
	pip install -r requirements.txt
create-virtualenv:
	python -m venv .venv
activate-virtualenv:
	source .venv/bin/activate
activate-pyenv:
	pyenv local $(PROJECT_NAME)