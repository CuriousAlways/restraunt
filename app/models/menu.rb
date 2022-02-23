class Menu < ApplicationRecord
  belongs_to :store
  has_many :menus_lists, dependent: :destroy
  has_many :dishes, through: :menus_lists, source: :listable, source_type: 'Item'
  has_many :combos, through: :menus_lists, source: :listable, source_type: 'Combo'
end
