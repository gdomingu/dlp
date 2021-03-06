ActiveAdmin.register User do
  menu :priority => 1
  batch_action :flag do |selection|
       User.find(selection).each { |p| p.flag! }
       redirect_to collection_path, :notice => "Posts flagged!"
     end
  index do
    selectable_column
    column :email
    column :profile do |profile|
        if :worker_profiles
          link_to "Worker Profile", admin_worker_profile_path(profile.id)
        end
      end
    default_actions
  end

end
