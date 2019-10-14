namespace :triminterection do
 desc "delete interactions"
  task triminteractions: :environment do
    num = Interection.all.count
    num -= 40
    Interection.order('id DESC').limit(num).destroy_all
    #ids = Interection.order('id DESC').limit(num).pluck(:id)
    #Interection.where(id: id).delete_all
  end

end
