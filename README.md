# README
This application was created as part of Advanced Web Application Development course at University of Aberdeen. A live version of the application is available at http://rocky-lake-33810.herokuapp.com (NOTE: accessing the app via https:// breaks the maps, use http:// instead)
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
* Unirest
* EasyAutocomplete
## Running application locally
* Run bundle install
* Ensure that /lib/assets contains the RAW_recipes.csv file
* Create the database (the process is explained below)
* Access the application using http://localhost:3000
### Database creation process
1. Migrate the database schema
  * rails db:migrate
2. Create users and assign them unique ids taken from recipes CSV file
  * rake users:create ---- _the desired number of users can be adjusted in the task file_
  * rake users:grab_ids
4. Import recipes from CSV file, skipping rows that contain contributor_ids not found in the database
  * rake recipes:import ---- _the entire CSV file gets read, so expect this process to be quite lengthy_
## The team behind this Application
* Nikita Romanenko (https://github.com/Sashfish) - StudentID: 51881316
* Ilina Georgieva (https://github.com/I-Georg)   - StudentID: 51881868
* Wendong Guo (https://github.com/Clark1Guo)     - StudentID: 51881838
## Parts that are not working correctly
* jQCloud was not implemented due to the time constraint
* Maps and search required a page refresh to work correctly
* ...
