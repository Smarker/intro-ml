FROM jupyter/minimal-notebook

RUN pip install \
  azure-storage-blob==1.5.0 \
  torchvision==0.1.8

COPY ./notebooks work
