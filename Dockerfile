FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl wget curl isolinux sed xorriso gpg dirmngr

WORKDIR /app

COPY . /app/

RUN ["chmod", "+x", "./ubuntu-autoinstall-generator.sh"]
CMD ["./ubuntu-autoinstall-generator.sh", "-a", "-k", "-u", "data/user-data.yml", "-s", "data/ubuntu_base.iso", "-d", "finished/ubuntu_finished.iso"]
