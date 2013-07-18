ActiveAdmin.register WorkerProfile do
  menu :priority => 2
  batch_action :flag do |selection|
       WorkerProfile.find(selection).each { |p| p.flag! }
       redirect_to collection_path, :notice => "Workers flagged!"
     end
  index do
    selectable_column
    column :first_name
    column :last_name
    column :gender
    column :home_phone
    column :address
    column :flyered, :as => "Last Flyered"
    column :jobs do |job|
        if :jobs
          link_to "Job History", admin_job_path(job.id)
        end
      end
    default_actions
  end

end
