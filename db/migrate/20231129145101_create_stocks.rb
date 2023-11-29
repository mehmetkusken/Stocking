class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.string :name
      t.string :hisse
      t.integer :hacimstr
      t.integer :hacim
      t.integer :lastpricestr
      t.integer :lastprice
      t.integer :rate

      t.timestamps
    end
  end
end
