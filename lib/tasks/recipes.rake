require 'csv'
namespace :recipes do
  desc "pull recipies into DB"
  task import: :environment do
 	Recipe.destroy_all
  p 'Reading the file, this might take a while'
  csv = CSV.read("lib/assets/RAW_recipes.csv", :headers =>true)
  #extract unique contributor ids and put them into an array of all unique ids
  arrid = []
   csv.each do |row|
     id = row[3].to_i
     arrid << id
   end
   arrid.uniq! #all unique ids in dataset
   result = User.all.pluck(:id) #all existing ids in users
   skipids = []
   skipids = arrid - result

  p 'Beginning import'
	CSV.foreach("lib/assets/RAW_recipes.csv", :headers =>true) do |row|
      if skipids.include?(row[3].to_i)
        p 'User doesn\'t exist for this recipe; skipping'
        next
      else
        p 'Importing recipe ' + row[0].to_s
        #create new model instances with the data
        Recipe.create!(
        name: row[0],
        minutes: row[2].to_i,
        contributor_id: row[3].to_i,
        submitted: row[4],
        tags: row[5],
        nutrition: row[6],
        n_steps: row[7].to_i,
        steps: row[8],
        description: row[9],
        ingredients: row[10],
        n_ingredients: row[11].to_i)
      end
    end
    p 'Recipes imported'
  end
end
