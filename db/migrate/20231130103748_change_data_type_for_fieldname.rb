class ChangeDataTypeForFieldname < ActiveRecord::Migration[6.1]
  def change
    change_column(:stocks, :hacimstr, :float)
  end
end
