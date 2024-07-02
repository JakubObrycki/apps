FROM python:3.10-alpine
RUN pip install kivy \
    && python3 main.py