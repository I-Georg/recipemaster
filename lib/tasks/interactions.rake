require 'csv'
namespace :interactions do
  desc "pull interactions into db"
  task seed_interactions: :environment do
Interaction.destroy_all
CSV.foreach("lib/assets/RAW_interactions.csv", :headers =>true) do |row|
puts row.inspect

Interaction.create!(
user_id: row[0].to_i,
recipe_id: row[1].to_i,
date: row[2],
rating: row[3].to_i,
review: row[4]
)
end

  end

end
