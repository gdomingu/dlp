class JobsController < InheritedResources::Base
  before_filter :authenticate_user!, :except => [:new, :create, :show]
  before_filter :authenticate_admin_user!, :only => [:jobdispatch]

  def jobdispatch
    @job = Job.find_by_id(params[:id])
  end

  def create
     create!(:notice => "Thank you for using the Day Labor Program, we have received your request and will contact you shortly.")
   end
end
