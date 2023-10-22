PROJECT_NAME = $(shell basename "$(PWD)")
PYTHON_VERSION = 3.9.6


dev:
	streamlit run app.py --server.port 8080
install:
	pip install -r requirements.txt
create-pyenv:
	pyenv virtualenv ${PYTHON_VERSION} $(PROJECT_NAME)

activate-pyenv:
	pyenv local $(PROJECT_NAME)