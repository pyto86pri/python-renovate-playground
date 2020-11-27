FROM python:3.8-slim

RUN apt-get -yq update && apt-get install -yq tk-dev git curl

ENV PIP_NO_CACHE_DIR=true \
  POETRY_VERSION=1.1.2 \
  POETRY_HOME=/opt/poetry \
  POETRY_VIRTUALENVS_CREATE=false
ENV PATH ${POETRY_HOME}/bin:$PATH

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

WORKDIR /app

COPY ./poetry/pyproject.toml ./poetry/poetry.lock /app/

RUN poetry install
