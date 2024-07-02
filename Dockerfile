FROM python:3.10-alpine
RUN python -m venv kivy_venv
RUN apt-get install python3 -y
RUN python3 main.py

