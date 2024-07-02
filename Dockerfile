FROM python:3.8.19-alpine
RUN pip install kivy \
    && apt-get update kivy \
    && apt-get install python3 -y \
    && python3 main.py
