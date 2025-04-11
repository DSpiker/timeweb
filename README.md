#pull the docker image
docker pull dspiker/class-dev-container

#Run it
docker run -it -v $(pwd):/home/developer/timeweb dspiker/class-dev-container

#Enter directory
cd timeweb

#Activate the env
source venv/bin/activate


