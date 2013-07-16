class WorkerProfilesController < InheritedResources::Base
  def new
    @worker_profile = WorkerProfile.new
  end

  def create
   @user = User.create(params[:user])
   @user.profile = WorkerProfile.create(params[:worker_profile])
   if @user.save
    redirect_to root_path
   else
      render :new
    end
  end
end
