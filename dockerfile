FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y libffi-dev libssl-dev python3 python3-dev python3-pip
RUN pip3 install --upgrade pip

WORKDIR /root/
COPY tron .
RUN pip3 install -r requirements.txt
ENV LANG C.UTF-8
ENV GIT_PYTHON_REFRESH=quiet
CMD ["streamlit","run","tronmoney.py"]
