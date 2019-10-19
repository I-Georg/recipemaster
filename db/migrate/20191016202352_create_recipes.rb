class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.text :name
      t.integer :minutes
      t.text :submitted
      t.text :tags
      t.text :nutrition
      t.integer :n_steps
      t.text :steps
      t.text :description
      t.text :ingredients
      t.integer :n_ingredients

      t.references :contributor, index: true, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
