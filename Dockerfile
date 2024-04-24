# Используем базовый образ Python
FROM python:3.11

# Установка рабочей директории внутри контейнера
WORKDIR /coursework_7

# Копирование зависимостей проекта
COPY poetry.lock pyproject.toml /coursework_7/

# Установка Poetry и зависимостей проекта
RUN pip install poetry && poetry config virtualenvs.create false && poetry install --no-interaction --no-ansi

# Копирование остальных файлов проекта в рабочую директорию контейнера
COPY ./coursework_7 /coursework_7/

