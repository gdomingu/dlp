ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    div :class => "blank_slate_container", :id => "dashboard_default_message" do

    end
    section "New Members" do
        table_for WorkerProfile.order("created_at desc").limit(5) do
          column :first_name do |worker|
            link_to worker.first_name, [:admin, worker]
          end
          column :last_name
          column :gender
          column :home_phone
          column :address
          column :flyered, :as => "Last Flyered"
          column :created_at
          column :jobs do |job|
              if :jobs
                link_to "Job History", admin_job_path(job.id)
              end
        end
        strong { link_to "View All Workers", admin_worker_profiles_path }
      end
    end
    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
