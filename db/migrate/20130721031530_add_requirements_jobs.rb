class AddRequirementsJobs < ActiveRecord::Migration
  def change
   add_column :jobs, :requirement, :string
  end
end
