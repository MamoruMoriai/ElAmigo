class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.references :category, foreign_key: true
      t.references :genre, foreign_key: true
      t.string :name, null: false
      t.integer :price, null: false
      t.string :image

      t.timestamps
    end
  end
end
