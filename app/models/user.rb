class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :timeoutable
    attr_accessible :email, :password, :password_confirmation, :remember_me, :profile_id, :profile_type
  belongs_to :profile, polymorphic: true
  has_many :photos
end
