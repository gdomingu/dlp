class CreateIdentificationsWorkerProfiles < ActiveRecord::Migration
  def up
    create_table :identifications_worker_profiles, :id => false do |t|
      t.integer :indentification_id
      t.integer :worker_profile_id
    end
  end

  def down
  end
end
