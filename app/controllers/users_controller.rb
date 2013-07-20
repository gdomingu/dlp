class UsersController < ApplicationController

  def show
    if current_user
      @profile = current_user.profile
      if current_user.has_profile
        @jobs = current_user.profile.jobs
      end
      # if current_user.has_photos
      #   @photos = current_user.photos
      # end
    end
  end
end
