class Photo < ActiveRecord::Base
  attr_accessible :url, :user_id
end
