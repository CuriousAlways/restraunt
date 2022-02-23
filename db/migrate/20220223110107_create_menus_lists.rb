class CreateMenusLists < ActiveRecord::Migration[6.1]
  def change
    create_table :menus_lists do |t|
      t.references :menu 
      t.references :listable, polymorphic: true
      t.boolean :available, null: false, default: true

      t.timestamps
    end
  end
end
