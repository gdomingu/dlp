class AddColumnToEmployerProfile < ActiveRecord::Migration
  def change
    add_column :employer_profiles, :first_name, :string
    add_column :employer_profiles, :last_name, :string
    add_column :employer_profiles, :home_phone, :integer
    add_column :employer_profiles, :cell_phone, :integer
    add_column :employer_profiles, :work_phone, :integer
    add_column :employer_profiles, :address, :string
  end
end
