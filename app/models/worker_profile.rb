class WorkerProfile < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :home_phone, :cell_phone, :work_phone, :address, :bio, :esl_level, :flyered, :gender, :health_insurance, :own_vehicle, :wait_list, :want_referral
  has_one :user, as: :profile, dependent: :destroy
  has_many :dues
  has_and_belongs_to_many :skills
  has_and_belongs_to_many :tools
  has_and_belongs_to_many :identifications
  has_and_belongs_to_many :training_requests
  has_and_belongs_to_many :issues
  has_and_belongs_to_many :jobs

end
