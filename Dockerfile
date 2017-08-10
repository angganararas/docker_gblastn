FROM nvidia/cuda:8.0-devel-centos7

RUN yum install -y \
    which make gcc gcc-c++ zlib-devel wget && \
    rm -rf /var/cache/yum/*

RUN wget "http://thales.cheme.cmu.edu/gpublast/gpu-blast-1.1_ncbi-blast-2.2.28.tar.gz" --output-document=gpu-blast-1.1_ncbi-blast-2.2.28.tar.gz && tar -zxvf gpu-blast-1.1_ncbi-blast-2.2.28.tar.gz && rm gpu-blast-1.1_ncbi-blast-2.2.28.tar.gz && wget "http://sifulan.my/download/install.sh" && sh ./install.sh
ENV PATH /usr/local/cuda/bin/:$PATH
WORKDIR /input

CMD ["bash"]

