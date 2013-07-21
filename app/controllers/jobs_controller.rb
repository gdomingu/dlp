class JobsController < InheritedResources::Base
  before_filter :authenticate_user!, :except => [:new, :create]
  before_filter :authenticate_admin!, :only => [:jobdispatch]

  def jobdispatch
    @job = Job.find_by_id(params[:id])

  end
end
