class UsersController < ApplicationController
  before_filter :authenticate_user!
  def show
    if user_signed_in?
      if current_user.has_profile
        @profile = current_user.profile
        @jobs = current_user.profile.jobs
      end
      if current_user.has_photos
        @photos = current_user.photos
      end
    end
  end
end
