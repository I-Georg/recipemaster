class User < ApplicationRecord
  #attr_accessible :user_id, :name, :address
  belongs_to :interections, :recipes
end
