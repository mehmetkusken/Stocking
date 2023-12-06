class ChangeDataTypeForGoldfieldnames < ActiveRecord::Migration[6.1]
  def change
    change_column(:golds, :buy, :decimal)
    change_column(:golds, :sell, :decimal)
  end
end
