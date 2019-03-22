class CreateTakes < ActiveRecord::Migration[5.2]
  def change
    create_table :takes do |t|
      t.references :sale, foreign_key: true
      t.references :menu, foreign_key: true
      t.integer :number, null: false

      t.timestamps
    end
  end
end
