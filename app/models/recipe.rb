class Recipe < ApplicationRecord
  #attr_accessible :name, :recipe_id, :minutes, :contributor_id, :submitted, :tags, :nutrition, :n_steps, :description, :ingredients, :n_ingredients
  has_many :users#, :dependent => :destroy
  serialize :tags, Array

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
