# syntax=docker/dockerfile:1
FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /config
COPY requirements.txt /config/
RUN pip install -r requirements.txt
COPY . /config/
RUN chown -R $USER:$USER config manage.py