class Recipe < ApplicationRecord
belongs_to :user, optional: true
#serialize :tags, Array
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

def self.statistics(col, num: 10)
  res = {}
  data = self.pluck(col)
  data.each do |str|
    arr = str.gsub(/[\[\]']/, '').split(',')
    arr.each do |k|
      k.strip!
      res[k] ||= 0
      res[k] += 1
    end
  end
  keys = res.keys.sort {|a,b| res[b] <=> res[a]}
  keys = keys[0...num]
  final_res = {}
  keys.each do |k|
    final_res[k] = res[k]
  end
  final_res
end
end
