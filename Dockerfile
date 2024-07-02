FROM python:3.10-alpine
RUN python -m venv kivy_venv
RUN python3 main.py