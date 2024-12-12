FROM python:3.11

WORKDIR /app

COPY ./app.py /app/app.py
COPY ./health_utils.py /app/health_utils.py
COPY ./test.py /app/test.py
COPY ./requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

RUN python -m unittest test.py

EXPOSE 3000

CMD ["python", "app.py"]