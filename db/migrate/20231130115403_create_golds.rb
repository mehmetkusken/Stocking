class CreateGolds < ActiveRecord::Migration[6.1]
  def change
    create_table :golds do |t|
      t.string :name
      t.decimal :buy
      t.decimal :sell

      t.timestamps
    end
  end
end
