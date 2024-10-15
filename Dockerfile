FROM python:3-alpine

COPY Pipfile Pipfile.lock ./
RUN pip install --no-cache-dir pipenv && \
    pipenv install --system --dev

WORKDIR /usr/src/app

COPY src .
COPY tests ./tests

EXPOSE 8000

CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0", "main:app"]