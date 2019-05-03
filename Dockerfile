FROM google/cloud-sdk:alpine
RUN gcloud components install kubectl

WORKDIR /apps/

ADD . /apps/

CMD ["sh", "-c", "sh /apps/restarter.sh"]
