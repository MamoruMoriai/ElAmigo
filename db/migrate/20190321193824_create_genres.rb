class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.references :category, foreign_key: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
