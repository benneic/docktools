FROM google/cloud-sdk:alpine

RUN apk update && apk upgrade && pip install -U pip
RUN apk --update add \
    iputils iproute2 net-tools tcpdump \
    ethtool iperf findutils bash \
    aws-cli \
    && rm -rf /var/cache/apk/*
    
RUN gcloud components install kubectl

CMD ["bash"]
