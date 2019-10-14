namespace :trimdb do
  desc "delete recipes from db"
  task trimrecipes: :environment do
    num = Recipe.all.count
    num -= 40
    Recipe.order('recipe_id DESC').limit(num).destroy_all
    #ids = Recipe.order('recipe_id DESC').limit(num).pluck(:id)
    #Recipe.where(id: 'recipe_id').destroy_all
  end

  desc "delete interactions"
  task triminteractions: :environment do
    num = Interection.all.count
    num -= 40
    Interection.order('id DESC').limit(num).destroy_all
    #ids = Interection.order('id DESC').limit(num).pluck(:id)
    #Interection.where(id: id).delete_all
  end

end
