#pull the docker image
docker pull dspiker/class-dev-container

#Run it
docker run -it --rm -p 5000:5000 dspiker/class-dev-container

#Enter directory
cd /home/developer/timeweb

#set up env
make setup

#run env
make run


