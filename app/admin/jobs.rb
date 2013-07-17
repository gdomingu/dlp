ActiveAdmin.register Job do
  menu :priority => 4
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

end
