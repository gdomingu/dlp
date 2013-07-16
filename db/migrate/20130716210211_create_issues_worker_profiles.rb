class CreateIssuesWorkerProfiles < ActiveRecord::Migration
  def up
    create_table :issues_worker_profiles, :id => false do |t|
      t.integer :issue_id
      t.integer :worker_profile_id
    end
  end

  def down
  end
end
