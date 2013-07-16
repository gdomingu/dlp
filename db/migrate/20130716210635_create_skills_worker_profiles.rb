class CreateSkillsWorkerProfiles < ActiveRecord::Migration
  def up
    create_table :skills_worker_profiles, :id => false do |t|
      t.integer :skill_id
      t.integer :worker_profile_id
    end
  end

  def down
  end
end
