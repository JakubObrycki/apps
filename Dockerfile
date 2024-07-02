FROM python:3.8.19-alpine
RUN pip install kivy \
    && apt-get update kivy \
    && pip install --upgrade pip \
    && python3 main.py
