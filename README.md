# myvpc

1) A linux host (ubuntu or redhat is assummed)
2) Install terraform
3) Install awscli
4) run command: 'aws configure' and specify your access credentials. eu-west-1 region assumed
5) install git on your host
6) create a test dir
7) clone the application by running the followings:
    git clone https://github.com/etafoh/myvpc.git
8) cd to the newqly created 'myvpc' dir
9) run the deploy script as follows:
    ./deployVPC.sh
    
10) To clean your vpc environment:
   run:    ./destroyVPC.sh
