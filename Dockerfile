FROM python:3.10-alpine
RUN python -m pip install --upgrade pip setuptools virtualenv \
RUN pip install kivy \
RUN python3 main.py