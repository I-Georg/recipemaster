namespace :trimdb do
  desc "delete recipes from db"
  task trimrecipes: :environment do
    num = Recipe.all.count
    num -= 4000
    Recipe.order('recipe_id DESC').limit(num).destroy_all
    #ids = Recipe.order('recipe_id DESC').limit(num).pluck(:id)
    #Recipe.where(id: ids).delete_all
  end

  desc "delete interactions"
  task triminteractions: :environment do
    num = Interection.all.count
    num -= 4000
    Interection.order('id DESC').limit(num).destroy_all
    #ids = Interection.order('id DESC').limit(num).pluck(:id)
    #Interection.where(id: ids).delete_all
  end

end
