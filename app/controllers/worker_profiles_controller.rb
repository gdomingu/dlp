class WorkerProfilesController < InheritedResources::Base
  def new
    @worker_profile = WorkerProfile.new
  end

  def create
     @worker = WorkerProfile.new(params[:worker_profile])
    if @worker.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @worker_profile = WorkerProfile.find_by_id(params[:id])
  end
end
