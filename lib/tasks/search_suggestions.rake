namespace :search_suggestions do
  desc "Generate search suggestions from worker_profiles"
  task :index => :environment do
    SearchSuggestion.index_worker_profiles
  end
end