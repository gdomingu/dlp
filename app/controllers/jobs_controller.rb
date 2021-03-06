class JobsController < InheritedResources::Base
  before_filter :authenticate_user!, :except => [:new, :new_moving_job, :new_painting_job, :new_gardening_job, :new_other_job, :create, :show, :jobdispatch]
  before_filter :authenticate_admin_user!, :only => [:jobdispatch]

  def jobdispatch
    @job = Job.find_by_id(params[:id])
    @workers = WorkerProfile.all
    @worker_profile = WorkerProfile.last
  end

  def addworker
  @job = Job.find_by_id(params[:id])
  @worker_profile = WorkerProfile.find_by_id(params[:id])
  @job.worker_profiles << @worker
  respond_to do |format|
    format.html
    format.js
    end
  end

def update
   @job = Job.find_by_id(params[:id])
   @job.worker_profiles << WorkerProfile.where(:first_name => params[:worker_profile][:first_name], :last_name => params[:worker_profile][:last_name])
    if @job.save
     redirect_back
    else
       render :new
    end
end
def new_moving_job
  @job = Job.new(params[:job])
end
def new_painting_job
  @job = Job.new(params[:job])
end
def new_gardening_job
  @job = Job.new(params[:job])
end
def new_other_job
  @job = Job.new(params[:job])
end
def create
  create!(:notice => "Thank you for using the Day Labor Program, we have received your request and will contact you shortly.")
end
end
