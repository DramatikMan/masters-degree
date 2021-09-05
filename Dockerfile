FROM python:3.9.6-slim
SHELL ["/bin/bash", "-c"]
WORKDIR /project
COPY Pipfile Pipfile.lock ./
RUN pip install pipenv
RUN mkdir .venv && pipenv install
CMD pipenv run jupyter notebook