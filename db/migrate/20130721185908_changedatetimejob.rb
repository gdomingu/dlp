class Changedatetimejob < ActiveRecord::Migration
  def change
    change_column :jobs, :date_of_job, :string
  end
end
