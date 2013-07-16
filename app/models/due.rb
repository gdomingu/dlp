class Due < ActiveRecord::Base
  attr_accessible :amount, :last_paid, :worker_profile_id

  belongs_to :worker_profile
end
