class CreateWages < ActiveRecord::Migration
  def change
    create_table :wages do |t|
      t.string :name
      t.integer :base_amount
      t.integer :ot_amount

      t.timestamps
    end
  end
end
