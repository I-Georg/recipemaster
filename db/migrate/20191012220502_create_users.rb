class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.integer :user_id
      t.text :name
      t.text :address

      t.timestamps
    end
  end
end
