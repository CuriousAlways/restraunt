class Store < ApplicationRecord
  has_one :menu 
  has_many :dishes, through: :menu
  has_many :combos, through: :menu

end
