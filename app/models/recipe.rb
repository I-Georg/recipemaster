class Recipe < ApplicationRecord
belongs_to :user, optional: true
def self.search(search)
  if search
    search = '%'+search+'%'
    recipe = Recipe.where("name LIKE ?", search).limit(10)
    if recipe
      self.where(id: recipe)
    else
      Recipe.take(10) #should be .all - shrunk to 10 for testing purposes
    end
  else
    Recipe.take(10) #should be .all - shrunk to 10 for testing purposes
  end
end
end
