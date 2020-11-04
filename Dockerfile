FROM python:3.7-slim

WORKDIR app

COPY ./src ./
COPY requirements.txt ./

ENV FLASK_APP=/app/app.py

RUN pip install -r requirements.txt

CMD ["flask", "run", "--host=0.0.0.0"]
