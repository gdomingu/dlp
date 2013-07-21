class AddEmployerNames < ActiveRecord::Migration
  def change
    add_column :jobs, :employer_first_name, :string
    add_column :jobs, :employer_last_name, :string
  end
end
