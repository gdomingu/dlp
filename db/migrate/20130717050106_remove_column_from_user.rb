class RemoveColumnFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :first_name
    remove_column :users, :last_name
    remove_column :users, :home_phone
    remove_column :users, :cell_phone
    remove_column :users, :work_phone
    remove_column :users, :address
  end
end
