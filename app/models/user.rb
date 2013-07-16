class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :timeoutable
    attr_accessible :email, :password, :password_confirmation,
                      :remember_me, :first_name, :last_name, :home_phone, :cell_phone, :work_phone, :address
  belongs_to :profile, polymorphic: true
  has_many :photos
end
