class CreateToolsWorkerProfiles < ActiveRecord::Migration
  def up
    create_table :tools_worker_profiles, :id => false do |t|
      t.integer :tool_id
      t.integer :worker_profile_id
    end
  end

  def down
  end
end
