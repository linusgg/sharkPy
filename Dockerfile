FROM ubuntu:16.04

RUN apt-get -y update && \
 apt-get install -y apt-utils && \
 apt-get install -y git && \
 apt-get install -y libpcap-dev && \
 apt-get install -y libglib2.0-dev && \
 apt-get install -y libpython-dev && \
 DEBIAN_FRONTEND=noninteractive apt-get install -y wireshark && \
 DEBIAN_FRONTEND=noninteractive apt-get install -y wireshark-dev && \
 git clone https://github.com/NationalSecurityAgency/sharkPy  && \
 cd sharkPy && python ./setup.py install

