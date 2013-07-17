class Wage < ActiveRecord::Base
  attr_accessible :base_amount, :name, :ot_amount
  has_and_belongs_to_many :jobs
end
