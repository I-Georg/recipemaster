class Recipe < ApplicationRecord
belongs_to :user, optional: true
def self.search(search)
  if search
    recipe = Recipe.find_by(name: search)
    if recipe
      self.where(name: recipe)
    else Recipe.take(10)
    end
  else
    Recipe.take(10)
  end
end
end
