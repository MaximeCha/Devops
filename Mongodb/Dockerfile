FROM mongo

COPY Scripts/entrypoint.sh /opt/
COPY Scripts/initMongoDb.js /docker-entrypoint-initdb.d/

VOLUME /data/db
EXPOSE 27017


#CMD [ "mongod", "--bind_ip", "0.0.0.0"]

#ENTRYPOINT ["/entrypoint.sh", "/opt/"]

#CMD ["sh"]
#CMD ["sh"]