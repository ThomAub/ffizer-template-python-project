clean:
	@find . | grep -E "(__pycache__|.mypy_cache|.pytest_cache|\.pyi|.ipynb_checkpoints|\.pyo$)" | xargs rm -rf

test: clean
	@poetry run pytest tests

format:
	@poetry run black .
	@poetry run isort --profile black

lint:
	@poetry run pylam .
	@poetry run isort --profile black