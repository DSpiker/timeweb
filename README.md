#Pull the docker image
- docker pull dspiker/class-dev-container

#Run it
- docker run -it --rm -p 8080:8080 -e GITHUB_USER="your username here"   -e GITHUB_EMAIL="your email here"   -e GITHUB_TOKEN="your token here"  dspiker/class-dev-container
  
#Enter directory
- cd timeweb

#Setup env
- make setup

#Run env
- make run


