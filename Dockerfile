FROM python:3.8.19-alpine
Run pip install --upgrade pip \
    && apt-get install python3-pip -y \
    && apt-get update \
    && pip install kivy \
    && python3 main.py