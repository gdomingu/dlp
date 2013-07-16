class CreateDues < ActiveRecord::Migration
  def change
    create_table :dues do |t|
      t.datetime :last_paid
      t.integer :amount
      t.integer :worker_profile_id

      t.timestamps
    end
  end
end
