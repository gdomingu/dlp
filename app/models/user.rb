class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :timeoutable
    attr_accessible :email, :password, :password_confirmation, :remember_me, :profile_id, :profile_type
  belongs_to :profile, polymorphic: true
  has_many :photos

  def has_profile
    !self.profile_type.empty?
  end

  def has_photos
    !self.photos.empty?
  end

  def is_worker
    self.profile_type == "WorkerProfile"
  end

  def is_employer
    self.profile_type == "EmployerProfile"
  end

  def has_jobs
    !self.profile.jobs.empty?
  end
end
