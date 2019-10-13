class Interection < ApplicationRecord
  attr_accessible :user_id, :recipe_id, :date, :rating, :review
  has_many :users, :dependent => :destoy
end
