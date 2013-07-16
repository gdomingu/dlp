class Job < ActiveRecord::Base
  attr_accessible :address, :cross_street, :date_of_job, :description, :dispatcher_id, :duration, :employer_profile_id, :english_level, :estimate, :estimate_accepted, :estimate_amount, :frequency, :job_status, :kind, :num_of_workers, :on_going, :one_time, :payment, :phone_kind, :phone_number, :receiver_id, :referred_by, :will_pick_up
end
