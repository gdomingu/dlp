class CreateTrainingRequestsWorkerProfiles < ActiveRecord::Migration
  def up
    create_table :training_requests_worker_profiles, :id => false do |t|
      t.integer :training_request_id
      t.integer :worker_profile_id
    end
  end

  def down
  end
end
