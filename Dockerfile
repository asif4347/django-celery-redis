#official base image
FROM python:3.9.5-alpine

#setting up work directory
WORKDIR /app

RUN pip install --upgrade pip

COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt


COPY ./entrypoint.sh /app/entrypoint.sh
RUN chmod a+x /app/entrypoint.sh

COPY . /app/

EXPOSE 8000

#ENTRYPOINT ["/app/entrypoint.sh"]

