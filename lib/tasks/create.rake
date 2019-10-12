require 'faker'
namespace :create do
  desc "Create users and address using Faker"
  task create_users: :environment do
  #create users
  User.destroy_all
  1000.times do |index|
   lat = []
   lng = []
   lat << Faker::Address.latitude
   lng << Faker::Address.longitude
   adr << lat
   adr << lng
   User.create!(name: Faker::FunnyName.two_word_name, address: adr)

  end
p 'names and addresses faked'

#getting user_id via query from Interection table and matching them to the newly populated faker user table
#https://stackoverflow.com/questions/6735874/how-do-you-run-a-mysql-query-from-a-rake-task
sql = ActiveRecord::Base.connection.execute("SELECT DISTINCT user_id FROM INTERECTION")
users = User.all
index = 0
 users.each do |index|
 User.user_id = sql[index]
  index +=1
end
p 'user_ids grabbed'
end
end
