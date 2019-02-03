FROM gcr.io/cloudshell-images/cloudshell:latest

# Add your content here

# To trigger a rebuild of your Cloud Shell image:
# 1. Commit your changes locally: git commit -a
# 2. Push your changes upstream: git push origin master

# This triggers a rebuild of your image hosted at gcr.io/ai-adventures-20181210/helloai.
# You can find the Cloud Source Repository hosting this file at https://source.developers.google.com/p/ai-adventures-20181210/r/helloai

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils

RUN apt-get install -y build-essential\
    && apt-get install -y checkinstall\
    && apt-get install -y libreadline-gplv2-dev\
    && apt-get install -y libncursesw5-dev\
    && apt-get install -y libssl-dev\
    && apt-get install -y libsqlite3-dev\
    && apt-get install -y tk-dev\
    && apt-get install -y libgdbm-dev\
    && apt-get install -y libc6-dev\
    && apt-get install -y libbz2-dev\
    && apt-get install -y zlib1g-dev\
    && apt-get install -y openssl\
    && apt-get install -y libffi-dev\
    && apt-get install -y python3-dev\
    && apt-get install -y python3-setuptools\
    && apt-get install -y wget

# Prepare to build
RUN mkdir Python37 && cd Python37

# Pull down Python 3.7, build, and install
RUN wget https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tar.xz
RUN tar xvf Python-3.7.0.tar.xz && cd Python-3.7.0 && ./configure  && make altinstall