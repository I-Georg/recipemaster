class CreateInteractions < ActiveRecord::Migration[6.0]
  def change
    create_table :interactions do |t|
      t.integer :user_id
      t.integer :original_recipe_id
      t.text :date
      t.integer :rating
      t.text :review
      t.integer :rec

      t.timestamps
    end
  end
end
