class CreateInterections < ActiveRecord::Migration[6.0]
  def change
    create_table :interections do |t|
      t.integer :user_id
      t.integer :recipe_id
      t.text :date
      t.integer :rating
      t.text :review

      t.timestamps
    end
  end
end
