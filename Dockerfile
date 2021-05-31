FROM python:3.9

RUN apt-get -y update && apt-get install -y make libsecp256k1-dev

SHELL ["/bin/bash", "-c"]

COPY api .
COPY nft.json .
COPY config.json .
COPY requirements.txt .

RUN chmod +x api
RUN pip install -r requirements.txt
RUN pip install eth-utils==1.10.0
RUN pip install web3==5.17.0

EXPOSE 5000
CMD ["./api", "/config.json"]