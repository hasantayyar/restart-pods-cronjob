FROM google/cloud-sdk:alpine
RUN gcloud components install kubectl

WORKDIR /apps/

ADD . /apps/

ENV GCLOUD_PROJECT ""
ENV CLUSTER_NAME ""

CMD ["sh", "-c", "sh /apps/restarter.sh"]
