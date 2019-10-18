require 'unirest'
class LivedataController < ApplicationController
  #api obtained from https://rapidapi.com/theapiguy/api/the-cocktail-db/details
def index
  @response1 = Unirest.get "https://the-cocktail-db.p.rapidapi.com/random.php",
  headers:{
    "X-RapidAPI-Host" => "the-cocktail-db.p.rapidapi.com",
    "X-RapidAPI-Key" => "bcd50a1ebdmsh7fc3a20a5f80b6bp19f892jsn2819a0a0a90b"
  }
  @response2 = Unirest.get "https://the-cocktail-db.p.rapidapi.com/random.php",
  headers:{
    "X-RapidAPI-Host" => "the-cocktail-db.p.rapidapi.com",
    "X-RapidAPI-Key" => "bcd50a1ebdmsh7fc3a20a5f80b6bp19f892jsn2819a0a0a90b"
  }
  @response3 = Unirest.get "https://the-cocktail-db.p.rapidapi.com/random.php",
  headers:{
    "X-RapidAPI-Host" => "the-cocktail-db.p.rapidapi.com",
    "X-RapidAPI-Key" => "bcd50a1ebdmsh7fc3a20a5f80b6bp19f892jsn2819a0a0a90b"
  }
  @response4 = Unirest.get "https://the-cocktail-db.p.rapidapi.com/random.php",
  headers:{
    "X-RapidAPI-Host" => "the-cocktail-db.p.rapidapi.com",
    "X-RapidAPI-Key" => "bcd50a1ebdmsh7fc3a20a5f80b6bp19f892jsn2819a0a0a90b"
  }
  @response5 = Unirest.get "https://the-cocktail-db.p.rapidapi.com/random.php",
  headers:{
    "X-RapidAPI-Host" => "the-cocktail-db.p.rapidapi.com",
    "X-RapidAPI-Key" => "bcd50a1ebdmsh7fc3a20a5f80b6bp19f892jsn2819a0a0a90b"
  }
end
end
