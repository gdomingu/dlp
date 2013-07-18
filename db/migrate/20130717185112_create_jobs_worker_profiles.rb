class CreateJobsWorkerProfiles < ActiveRecord::Migration
  def up
    create_table :jobs_worker_profiles, :id => false do |t|
      t.integer :job_id
      t.integer :worker_profile_id
      end
  end

  def down
  end
end
