FROM python:3
ADD __main__.py
RUN pip install -r requirements.txt
CMD [ "python", "python \_\_main\_\_.py -H mon_serveur_mongo -P 27017 -D ma_database_mongo -u mon_user_mongo -p mon_password_mongo -A mon_api_bracelet
" ]