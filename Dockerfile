FROM jupyter/minimal-notebook

RUN pip install \
  azure-storage-blob==1.5.0 \
  torchvision==0.1.8

RUN git clone https://github.com/Smarker/intro-ml.git

WORKDIR /intro-ml/notebooks
