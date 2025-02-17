FROM python:latest
RUN apt-get -y update
RUN apt-get install -y apt-transport-https ca-certificates curl gnupg git-all gh
RUN apt-get install -y sqlite3
COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY .devcontainer/.bashrc /root/.bashrc
COPY append_semi_colon.sh .
RUN chmod +x append_semi_colon.sh