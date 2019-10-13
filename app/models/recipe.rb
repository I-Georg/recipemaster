class Recipe < ApplicationRecord
  attr_accessible :name, :recipe_id, :minutes, :contributor_id, :submitted, :tags, :nutrition, :n_steps, :description, :ingredients, :n_ingredients
  has_many :users, :dependent => :destroy
end
