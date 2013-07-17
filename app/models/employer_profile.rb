class EmployerProfile < ActiveRecord::Base
  attr_accessible  :first_name, :last_name, :home_phone, :cell_phone, :work_phone, :address
  has_one :user, as: :profile, dependent: :destroy
  has_many :jobs
end
