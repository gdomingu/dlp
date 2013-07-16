class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :kind
      t.string :description
      t.datetime :date_of_job
      t.string :duration
      t.string :address
      t.string :cross_street
      t.integer :phone_number
      t.string :phone_kind
      t.string :referred_by
      t.string :payment
      t.boolean :one_time
      t.boolean :on_going
      t.string :frequency
      t.integer :num_of_workers
      t.string :english_level
      t.boolean :will_pick_up
      t.string :job_status
      t.integer :dispatcher_id
      t.integer :receiver_id
      t.boolean :estimate
      t.boolean :estimate_accepted
      t.float :estimate_amount
      t.integer :employer_profile_id

      t.timestamps
    end
  end
end
