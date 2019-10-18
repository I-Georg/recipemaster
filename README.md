# README
This application was created as part of Advanced Web Application Development course. ...
## Ruby version
* 2.6.4
## Rails version
* 6.0.0
## Packages used
* Highcharts
* jQuery
* jQCloud
* Leaflet
* Bootstrap
* Webpacker
* pagy
* Unirest
## Database creation
Database is created by creating a number of users using Faker and importing recipe data from a CSV file and
### Complete DB creation process
1. Migrate the database schema
  * rails db:migrate
2. Create users and assign them unique ids taken from recipes CSV file
  * rake users:create ---- _the desired number of users can be adjusted in the task file_
  * rake users:grab_ids
4. Import recipes from CSV file, skipping rows that contain contributor_ids not found in the database
  * rake recipes:import ---- _the entire CSV file gets read, so expect this process to be quite lengthy_
## Deployment instructions
HEROKU DEPLOYMENT GOES HERE
## The team behind this Application
* Nikita Romanenko (https://github.com/Sashfish)
* Ilina Georgieva (https://github.com/I-Georg)
* Wendong Guo (https://github.com/Clark1Guo)
