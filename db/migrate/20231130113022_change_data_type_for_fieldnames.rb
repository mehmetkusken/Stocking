class ChangeDataTypeForFieldnames < ActiveRecord::Migration[6.1]
  def change
    change_column(:stocks, :rate, :float)
    change_column(:stocks, :lastprice, :float)
    change_column(:stocks, :lastpricestr, :float)
  end
end
