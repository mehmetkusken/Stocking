class ChangeDataTypeForGoldfieldname < ActiveRecord::Migration[6.1]
  def change
    change_column(:golds, :buy, :float)
    change_column(:golds, :sell, :float)
  end
end
