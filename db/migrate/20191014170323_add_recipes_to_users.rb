class AddRecipesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :recipe, null: false, foreign_key: true
  end
end
