# Project 01 - ST0263
## Juan Manuel Ciro Restrepo - jcirore@eafit.edu.co

Small web application that allows users to store geolocations of routes they've traveled.

## Deployment
To deploy the app you only need to install `docker-compose` from https://docs.docker.com/compose/install/. 
The app will be hosted on `port: 80`.

1. Clone the repository 

       $ git clone 'https://github.com/JCiroR/ST0263-Project-01/'

2. Build and run the app with Docker
      
       $ docker-compose build
       $ docker-compose up
       $ docker-compose run web rake db:create
       $ docker-compose run web rake db:schema:load

  
