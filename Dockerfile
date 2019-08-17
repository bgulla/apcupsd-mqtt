FROM python:3-alpine
MAINTAINER Brandon <hey@bgulla.dev>

RUN pip install apcaccess paho-mqtt PrettyTable
COPY ./apcupsd-mqtt.py /apcupsd-mqtt.py

CMD ["python", "/apcupsd-influxdb-exporter.py"]
