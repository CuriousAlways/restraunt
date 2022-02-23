class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :type
      t.string :description
      t.decimal :price, default: 0

      t.timestamps
    end
  end
end
