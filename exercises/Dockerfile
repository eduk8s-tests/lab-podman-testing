FROM python:3.8

WORKDIR /app

COPY requirements.txt /app/

RUN pip install -r /app/requirements.txt

COPY wsgi.py /app/

EXPOSE 8080

USER 65534

CMD [ "gunicorn", "--log-file", "-", "--bind", "0.0.0.0:8080", "wsgi:application" ]
