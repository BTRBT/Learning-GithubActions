# Baseline image
FROM python:3-alpine as base

# Update packages and install dependencies
COPY Pipfile Pipfile.lock ./
RUN apk upgrade --no-cache && \
    pip install --no-cache-dir pipenv && \
    pipenv install --clear --system

# Copy application code into working directory
WORKDIR /usr/app
COPY src ./src


# Development staging
FROM base as development

# Install development dependencies
RUN pipenv install --clear --system --dev

COPY tests ./tests


# Production staging
FROM base as production

EXPOSE 8000

CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0", "src.main:app"]