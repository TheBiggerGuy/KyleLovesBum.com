FROM python:3.4

MAINTAINER Guy Taylor <thebigguy.co.uk@gmail.com>

RUN mkdir /code
COPY requirements.txt /code/
COPY manage.py /code/
COPY run.sh /code/

run mkdir kylelovesbum
COPY kylelovesbum /code/kylelovesbum

WORKDIR /code
RUN ["chmod", "+x", "run.sh"]
RUN ls

ENV PYTHONUNBUFFERED 1
RUN ["pip", "install", "-r", "requirements.txt"]
RUN ["rm", "requirements.txt"]

EXPOSE 8000 8000
CMD ["./run.sh", "8000"]
