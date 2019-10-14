class AddRecipeToInteractions < ActiveRecord::Migration[6.0]
  def change
    add_reference :interactions, :recipe, foreign_key: true
  end
end
