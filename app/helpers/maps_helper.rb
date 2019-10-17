module MapsHelper
def latandlonshowing
@users = User.all
coordyarr = []
@users.each do |user|
coordyarr << user.lat.to_f
coordyarr << user.lng.to_f

return coordyarr
end

end
end
