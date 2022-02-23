class Combo < ApplicationRecord
  has_and_belongs_to_many :items
  has_many :menus_lists, as: :listable

  def price 
    items.price.sum
  end
  
end
