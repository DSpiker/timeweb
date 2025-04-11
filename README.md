#Pull the docker image
- docker pull dspiker/class-dev-container

#Build it
- docker build -t dspiker/class-dev-container .

#Run it
- docker run -it --rm -p 5000:5000 dspiker/class-dev-container

#Enter directory
- cd /home/developer/timeweb

#Set up env
- make setup

#Run env
- make run


