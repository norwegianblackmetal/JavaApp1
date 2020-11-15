FROM python:3.7.9-slim
RUN pip install flask
COPY . .
CMD python main.py
