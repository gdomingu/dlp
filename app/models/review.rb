class Review < ActiveRecord::Base
  attr_accessible :answer1, :answer2, :answer3, :answer4, :answer5, :job_id, :prompt1, :prompt2, :prompt3, :prompt4, :prompt5
belongs_to :job
end
