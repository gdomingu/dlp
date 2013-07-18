class AddColumnToWorkerProfile < ActiveRecord::Migration
  def change
      add_column :worker_profiles, :first_name, :string
      add_column :worker_profiles, :last_name, :string
      add_column :worker_profiles, :home_phone, :integer
      add_column :worker_profiles, :cell_phone, :integer
      add_column :worker_profiles, :work_phone, :integer
      add_column :worker_profiles, :address, :string
  end
end
