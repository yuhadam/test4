#! /bin/bash
mkdir test
chmod 777 test
cp -r data test/data
cp exe1.sh test
cd test
echo FROM ubuntu:14.04 > Dockerfile
echo ADD data /home/test/ >>Dockerfile
echo ADD exe1.sh /home/ >>Dockerfile
echo RUN sudo apt-get update >>Dockerfile
echo RUN sudo apt-get install -y ftp >> Dockerfile
echo CMD /home/exe1.sh >> Dockerfile
docker build --tag yhim/example .
docker push yhim/example






