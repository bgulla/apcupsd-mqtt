FROM python:3-alpine
MAINTAINER Brandon <hey@bgulla.dev>

USER root
COPY ./src /src
RUN pip install -r /src/requirements.txt \
    && chown -R 1001:1001 /src

USER 1001
WORKDIR ["/src"]

CMD ["python", "/src/apcupsd-mqtt.py"]
