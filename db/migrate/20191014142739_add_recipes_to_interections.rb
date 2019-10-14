class AddRecipesToInterections < ActiveRecord::Migration[6.0]
  def change
    add_reference :interections, :recipe, null: false, foreign_key: true
  end
end
