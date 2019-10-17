class MapsController < ApplicationController
#include Mapshelper
def index
@users =  User.all
#@Latandlonshowing= latandlonshowing

@users.each do |user|
 #user.lat.to_f
# user.lng.to_f
 @lat = user.lat
 @lon = user.lng

end

end

end
