class ChangeEmailColumn < ActiveRecord::Migration
  def change
    change_column :worker_profiles, :home_phone, :string
    change_column :worker_profiles, :work_phone, :string
    change_column :worker_profiles, :cell_phone, :string

  end
end
