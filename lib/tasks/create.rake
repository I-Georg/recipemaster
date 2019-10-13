require 'faker'
namespace :create do
  desc "Create users and address using Faker,plugging each user with user_id from Recipes"
  task create_users: :environment do
  #create users
  User.destroy_all
 
  50.times do |index|
   User.create!(name: Faker::FunnyName.two_word_name, address: [Faker::Address.latitude, Faker::Address.longitude])
  end
p 'names and addresses faked'

#getting user_id via query from Interection table and matching them to the newly populated faker user table
sql = Interection.pluck(:user_id).uniq
x =0
 User.all.each do |index|
index.user_id = sql[x]
x+=1
end
p 'user_ids grabbed'
end
end
