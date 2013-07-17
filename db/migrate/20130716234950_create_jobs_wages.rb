class CreateJobsWages < ActiveRecord::Migration
  def up
    create_table :jobs_wages, :id => false do |t|
      t.integer :job_id
      t.integer :wage_id
      end
  end

  def down
  end
end
