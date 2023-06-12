FROM python:3.8

copy . .

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "main.py"]