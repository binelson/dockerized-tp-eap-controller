FROM openjdk:7

RUN mkdir -p /opt/tpeap/EAPController
WORKDIR /opt/tpeap/EAPController

RUN curl http://static.tp-link.com/EAP_Controller_v2.4.8_linux_x64.tar.gz | tar -xz

CMD java \
  -server \
  -Xms128m \
  -Xmx1024m \
  -XX:MaxHeapFreeRatio=60 \
  -XX:MinHeapFreeRatio=30 \
  -XX:+UseSerialGC \
  -XX:+HeapDumpOnOutOfMemoryError \
  -Deap.home="/opt/tpeap/EAPController" \
  -cp /opt/tpeap/EAPController/lib/com.tp-link.eap.start-0.0.1-SNAPSHOT.jar:/opt/tpeap/EAPController/lib/*:/opt/tpeap/EAPController/external-lib/* \
  com.tp_link.eap.start.EapMain \
  start
