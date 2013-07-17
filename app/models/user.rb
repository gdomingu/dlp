class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :timeoutable
    attr_accessible :email, :password, :password_confirmation, :remember_me
  belongs_to :profile, polymorphic: true
  has_many :photos
end
