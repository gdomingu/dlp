class Job < ActiveRecord::Base
  attr_accessible :address, :cross_street, :date_of_job, :description, :dispatcher_id, :duration, :employer_profile_id, :english_level, :estimate, :estimate_accepted, :estimate_amount, :frequency, :job_status, :kind, :num_of_workers, :on_going, :one_time, :payment, :phone_kind, :phone_number, :receiver_id, :referred_by, :will_pick_up
  belongs_to :employer_profile
  belongs_to :dispatcher, :class_name => AdminUser
  belongs_to :receiver, :class_name => AdminUser
  has_and_belongs_to_many :items
  has_and_belongs_to_many :worker_profiles
  has_and_belongs_to_many :wages
  has_one :review
end
