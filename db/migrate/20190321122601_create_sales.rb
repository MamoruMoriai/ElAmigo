class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.references :seat, foreign_key: true
      t.datetime :date, null: false
      t.integer :visitor, null: false

      t.timestamps
    end
  end
end
