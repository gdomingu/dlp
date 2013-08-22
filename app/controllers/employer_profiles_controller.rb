class EmployerProfilesController < InheritedResources::Base
  def new
    @employer_profile = EmployerProfile.new
  end

  def create
     @employer = EmployerProfile.new(params[:employer_profile])
    if @employer.save
      @user = User.find_by_id(current_user.id)
      @user.update_attributes(:profile_id => @employer.id, :profile_type => "EmployerProfile")
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @employer_profile = EmployerProfile.find_by_id(params[:id])
  end
end
