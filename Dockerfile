FROM python:3.8.19-alpine
COPY . .
RUN pip install kivy && \
    pip install --upgrade pip && \
    python3 main.py
