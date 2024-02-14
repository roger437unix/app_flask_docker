FROM python:3.12-slim-bullseye

WORKDIR /app
COPY webapp/. .
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]