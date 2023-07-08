.PHONY: install
install:
	poetry install

.PHONY: install-pre-commit
install-pre-commit:
	poetry run pre-commit uninstall; poetry run pre-commit install

.PHONY: lint
lint:
	poetry run pre-commit run --all-files

.PHONY: migrate
migrate:
	poetry run python -m CoreBackend.manage migrate

.PHONY: migrations
migrations:
	poetry run python -m CoreBackend.manage makemigrations

.PHONY: runserver
runserver:
	poetry run python -m CoreBackend.manage runserver

.PHONY: shell
shell:
	poetry run python -m CoreBackend.manage shell

.PHONY: superuser
superuser:
	poetry run python -m CoreBackend.manage createsuperuser

.PHONY: update
update: install migrate ;