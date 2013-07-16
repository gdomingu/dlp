class WorkerProfile < ActiveRecord::Base
  attr_accessible :bio, :esl_level, :flyered, :gender, :health_insurance, :own_vehicle, :wait_list, :want_referral
end
