PYTHON ?= python3
VENV_DIR ?= env
VENV_PYTHON := $(VENV_DIR)/bin/python
VENV_PIP := $(VENV_DIR)/bin/pip

.PHONY: all env book clear-env

all: book

env:
	$(PYTHON) -m venv $(VENV_DIR)
	$(VENV_PIP) install -r requirements.txt

book: env
	$(VENV_PYTHON) ostep.py

clear-env:
	rm -rf $(VENV_DIR)
