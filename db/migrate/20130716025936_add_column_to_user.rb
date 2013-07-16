class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :profile_id, :integer
    add_column :users, :profile_type, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :home_phone, :integer
    add_column :users, :cell_phone, :integer
    add_column :users, :work_phone, :integer
    add_column :users, :address, :string
  end
end
