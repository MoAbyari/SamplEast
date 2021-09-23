# Project Title : SamplEast


## Current Version

v.01


## Description

SamplEast is a music store where you can access unlimited musical samples and loops from eastern ancient. It will be continuously improved in the near future. Please signup to download loops and samples, and get access to instruments and artists bio. 

This web app is built using Ruby version 2.7.4 and Rails version 5.2.6. SamplEast app has four models: user, sample, instrument and artist.


## Executing

1. Please go to the link https://sampleast.herokuapp.com/
2. Sign up or login to access the main content.


## Approach

There is an admin authentication so that the admin can add, edite and delete artists,instruments and musical loops and samples.

Users authentication and security with both front end and back end.Users have to sign in to be able to listen,download, and view music loops and samples, and be able to listen, read and be familiar with artists and instruments. 

The Models are created in a way that user is able to find samples through samples page, artists and instruments. 
 
Simple search function was added to search for samples based on musical key, instruments name.
 
Tests were run multiple times as a visitors, an user and admin to fix bugs and make sure the web is working probably.


## Future Continuous Improvement

1. V.02

* Adopting AWS.
* Adding stripe API for payment gateway.
* Adding artists account so that they can create profile and share their work.


## Gem

* bootstrap v4.4.1 is used as a framework to style the project's front end.
* The app uses bcrypt v3.1.7 gem to store the users' password that ensure the security.


## Author

* **Mo Abyari** https://github.com/MoAbyari
