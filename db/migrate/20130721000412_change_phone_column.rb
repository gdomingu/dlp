class ChangePhoneColumn < ActiveRecord::Migration
  def change
   change_column :employer_profiles, :home_phone, :string
   change_column :employer_profiles, :work_phone, :string
   change_column :employer_profiles, :cell_phone, :string
   change_column :worker_profiles, :home_phone, :string
   change_column :worker_profiles, :work_phone, :string
   change_column :worker_profiles, :cell_phone, :string
  end
end
