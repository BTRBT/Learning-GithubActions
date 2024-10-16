# Baseline image
FROM python:3-alpine as base

# Install dependencies
COPY Pipfile Pipfile.lock ./
RUN pip install --no-cache-dir pipenv && \
    pipenv install --system

# Copy application code into working directory
WORKDIR /usr/app
COPY src ./src


# Development staging
FROM base as development

# Install development dependencies
RUN pipenv install --system --dev

COPY tests ./tests


# Production staging
FROM base as production

EXPOSE 8000

CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0", "src.main:app"]