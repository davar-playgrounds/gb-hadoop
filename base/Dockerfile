FROM debian:8
RUN echo "deb http://ftp.debian.org/debian jessie-backports main" >> /etc/apt/sources.list &&\
    apt-get update &&\
    DEBIAN_FRONTEND=noninteractive apt-get install -t jessie-backports -y --no-install-recommends openjdk-8-jdk &&\
    apt-get update &&\
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends net-tools curl netcat

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
ENV HADOOP_VERSION 2.7.7
ENV HADOOP_URL https://www.apache.org/dist/hadoop/common/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz

RUN set -x \
    && curl -fSL "$HADOOP_URL" -o /tmp/hadoop.tar.gz \
    && tar -xvf /tmp/hadoop.tar.gz -C /opt/ \
    && rm /tmp/hadoop.tar.gz*

RUN ln -s /opt/hadoop-$HADOOP_VERSION/etc/hadoop /etc/hadoop &&\
    cp /etc/hadoop/mapred-site.xml.template /etc/hadoop/mapred-site.xml &&\
    mkdir /opt/hadoop-$HADOOP_VERSION/logs &&\
    mkdir /hadoop-data

ENV HADOOP_PREFIX=/opt/hadoop-$HADOOP_VERSION
ENV HADOOP_CONF_DIR=/etc/hadoop
ENV MULTIHOMED_NETWORK=1
ENV USER=root
ENV PATH $HADOOP_PREFIX/bin/:$PATH

ADD entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
