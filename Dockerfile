FROM nodered/node-red-docker
USER root
RUN apt-get update && apt-get -y upgrade
USER node-red
RUN npm install node-red-contrib-scx-ibmiotapp
COPY flows.json /data/flows.json	
