class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.text :name
      t.integer :recipe_id
      t.integer :minutes
      t.integer :contributor_id
      t.text :submitted
      t.text :tags
      t.text :nutrition
      t.integer :n_steps
      t.text :steps
      t.text :description
      t.text :ingredients
      t.integer :n_ingredients
      t.integer :rec

      t.timestamps
    end
  end
end
