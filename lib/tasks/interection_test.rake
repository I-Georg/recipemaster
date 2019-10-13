require 'csv'
namespace :interection_test do
desc "seed interections table with 200 records while the db is seeding"
  task interection: :environment do
Interection.destroy_all

CSV.foreach("lib/assets/RAW_interactions.csv", :headers =>true) do |row|
puts row.inspect


Interection.create!(
user_id: row[0].to_i,
recipe_id: row[1].to_i,
date: row[2],
rating: row[3].to_i,
review: row[4]
)
if Interection.count > 200
break
end
end
end
end
