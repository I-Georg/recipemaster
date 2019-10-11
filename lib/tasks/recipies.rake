require 'csv'
namespace :recipies do
  desc "pull recipies into DB"
  task seed_recipies: :environment do
 	Deployment.destroy_all
	CSV.foreach("lib/assets/RAW_recipes.csv", :headers =>true) do |row |
      puts row.inspect #just so that we know the file's being read
      #create new model instances with the data
      Deployment.create!(
      name: row[0],
      recipe_id: row[1].to_i,
      minutes: row[2].to_i,
      contributor_id: row[3].to_i,
      submitted: row[4],
      tags: row[5],
      nutrition: row[6],
      n_steps: row[7].to_i,
      steps: row[8],
      description: row[9],
      ingredients: row[10],
      n_ingredients: row[11].to_i,
      rec: row[12].to_i
    )
    end
  end
end
