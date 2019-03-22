class CreateSeats < ActiveRecord::Migration[5.2]
  def change
    create_table :seats do |t|
      t.string :name, null: false
      t.integer :max, null: false

      t.timestamps
    end
  end
end
