class CreatePrices < ActiveRecord::Migration[6.1]
  def change
    create_table :prices do |t|
      t.float :conso
      t.float :puissance

      t.timestamps
    end
  end
end
