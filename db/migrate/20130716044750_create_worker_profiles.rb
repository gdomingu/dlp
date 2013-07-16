class CreateWorkerProfiles < ActiveRecord::Migration
  def change
    create_table :worker_profiles do |t|
      t.string :gender
      t.string :bio
      t.string :esl_level
      t.integer :wait_list
      t.boolean :own_vehicle
      t.boolean :health_insurance
      t.boolean :want_referral
      t.datetime :flyered

      t.timestamps
    end
  end
end
