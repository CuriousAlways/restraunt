class CreateCombosItems < ActiveRecord::Migration[6.1]
  def change
    create_join_table :combos, :items do |t|
      t.index :combo_id
      t.index :item_id
    end
  end
end
