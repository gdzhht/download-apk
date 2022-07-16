FROM debian:stable

#COPY sources.list /etc/apt/sources.list

RUN apt-get update ;\
    apt-get install -y  fdroidserver wget curl npm nodejs git ca-certificarts ;\
    apt-get clean ;\
#    npm config set registry https://registry.npm.taobao.org/ ;\
    git clone https://github.com/dweinstein/node-aptoide.git ;\
    cd node-aptoide ;\
    npm install -g aptoide 
    
