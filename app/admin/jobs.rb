ActiveAdmin.register Job do

  menu :priority => 4
    # This is sets position in nav bar.

  batch_action :flag do |selection|
       Job.find(selection).each { |p| p.flag! }
       redirect_to collection_path, :notice => "Jobs flagged!"
     end
    # This adds the tick boxes

  member_action :worker_profiles do
       @job = Job.find(params[:id])

       # This will render app/views/admin/posts/comments.html.erb
     end

  index do
    selectable_column
    column :employer_profile, :as => "Employer", :sortable => :employer_profile
    column :date_of_job
    column :kind, :label => "Kind of Job"
    column :description
    column :address
    column :cross_street
    column :phone_number, :as => :phone
    column :job_status
    column :worker_profile do |profile|
        if :worker_profiles
          link_to "Workers Assigned", admin_job_workers_path(profile.id)
        end
      end
    default_actions
  end

  form do |f|
       f.inputs "Details" do
        f.input :num_of_workers, :as => :number
        f.input :date_of_job, :as => :datetime_select, :label => "Date of Work", :start_year => Time.now.year

        f.input :employer_profile_id, :as => :select, :collection => Hash[EmployerProfile.all.map{|b| ["#{b.first_name} "+ b.last_name,b.id]}]
        f.input :dispatcher_id, :as => :select, :collection => Hash[AdminUser.all.map{|b| [b.email,b.id]}], :label => "Dispatched by"
        f.input :receiver_id, :as => :select, :collection => Hash[AdminUser.all.map{|b| [b.email,b.id]}], :label => "Received by"
        f.input :kind, :label => "Kind of Job"
        f.input :description
        f.input :duration
        f.input :address
        f.input :cross_street
        f.input :phone_number, :as => :phone
        f.input :phone_kind
        f.input :referred_by
        f.input :payment
        f.input :one_time, :as => :boolean
        f.input :on_going, :as => :boolean
        f.input :frequency
        f.input :english_level
        f.input :will_pick_up, :as => :boolean
        f.input :job_status
        f.input :estimate, :as => :boolean
        f.input :estimate_accepted, :as => :boolean
        f.input :estimate_amount
        end
      f.actions
   end

   # show do |job|
   #      attributes_table do
   #        row :num_of_workers
   #        row :worker_profiles.each do |worker|
   #          worker.first_name
   #          end
   #      end
   #      active_admin_comments
   #    end
end
