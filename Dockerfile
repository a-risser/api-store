FROM python:3
ADD __main__.py /
COPY requirements.txt /opt/app/requirements.txt
WORKDIR /opt/app
RUN pip install -r requirements.txt
COPY . /opt/app
CMD [ "python \_\_main\_\_.py -H mon_serveur_mongo -P 27017 -D ma_database_mongo -u root -p root -A mon_api_bracelet" ]