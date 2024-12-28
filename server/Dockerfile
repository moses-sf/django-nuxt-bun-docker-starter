FROM python:3.13.1-alpine AS builder
LABEL authors="moses"

WORKDIR /app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1s

# install linux dependencies
RUN apk update && apk upgrade && \
  apk add --no-cache gcc g++ musl-dev curl libffi-dev postgresql-dev zlib-dev jpeg-dev freetype-dev

# install poetry to manage python dependencies
RUN curl -sSL https://install.python-poetry.org | python3 -

FROM builder AS execution
# install python dependencies
COPY ./pyproject.toml .
COPY ./poetry.lock .
RUN /root/.local/bin/poetry install

COPY /. .
RUN chmod +x /app/scripts/start_dev.sh

EXPOSE 8000
CMD ["sh", "/app/scripts/start_dev.sh"]