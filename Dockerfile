FROM python:3.9


RUN mkdir /weather
WORKDIR /weather

COPY requirements.txt /weather/
RUN pip install -r requirements.txt

COPY . /weather/
CMD [ "python", "main.py", "runserver", "0.0.0.0:80"]
EXPOSE 80