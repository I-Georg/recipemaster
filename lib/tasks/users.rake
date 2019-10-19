require 'faker'
namespace :users do
  usrnum = 30 #adjust this number to create the desired number of users; note - only a small number was selected to accomodate heroku's limit on db size
  desc "Create users and address using Faker,plugging each user with user_id from Recipes"
  task create: :environment do
  #create users
  User.destroy_all
  usrnum.times do |index|
   User.create!(name: Faker::FunnyName.two_word_name, lat: Faker::Address.latitude, lng: Faker::Address.longitude)
   p 'User ' + (index+1).to_s + ' faked'
  end
  p 'All users faked'
end

desc "grab user_id from recipes"
task grab_ids: :environment do
  p 'Reading the file, this might take a while'
   csv = CSV.read(Rails.root / 'lib' / 'assets' / 'RAW_recipes.csv', :headers =>true)
   #extract unique contributor ids and put them into an array
   arrid = []
    ua =[]
    csv.each do |row|
      id = row[3].to_i
      arrid << id
    end
    ua = arrid.uniq!
    num = ua.count - usrnum
    ua.pop(num)
    #update each existing user with a new id from the array
index = 0
User.all.each do |user|
user.update!(id: ua[index])
p 'User id changed - ' + (user.id).to_s
index +=1
end
end
end
