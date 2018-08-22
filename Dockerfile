FROM amazonlinux:2016.09
MAINTAINER hnishiura <nishiurahomi@arsaga.com>

# yum update
RUN yum update -y

#Install sudo
RUN yum -y install sudo

# Install less package
RUN sudo yum -y install less

#set japanese
RUN sudo echo "LANG=ja_JP.UTF-8" > /etc/sysconfig/i18n
RUN sudo  yum install -y man-pages-ja

#Install git
Run yum install -y git

#Install aws-cli
RUN yum install -y aws-cli 
