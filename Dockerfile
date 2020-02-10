#基于centos7镜像
FROM centos:centos7

#维护人的信息
MAINTAINER Jokin <327928971@qq.com>

#中文支持
RUN yum install kde-l10n-Chinese -y
RUN yum install glibc-common -y
RUN localedef -c -f UTF-8 -i zh_CN zh_CN.utf8
RUN export LANG=zh_CN.UTF-8
RUN echo "export LANG=zh_CN.UTF-8" >> /etc/locale.conf
ENV LANG zh_CN.UTF-8
ENV LC_ALL zh_CN.UTF-8

RUN yum install vim -y
RUN yum install screen -y
RUN yum install git -y
RUN yum install zip -y
RUN yum install unzip -y
RUN yum install java -y

WORKDIR /srv/mc

CMD ["/bin/bash"]
