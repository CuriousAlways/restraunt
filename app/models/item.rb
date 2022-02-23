class Item < ApplicationRecord
  has_and_belongs_to_many :combos
  has_many :menus_lists, as: :listable

end
