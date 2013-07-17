class CreateItemsJobs < ActiveRecord::Migration
  def up
    create_table :items_jobs, :id => false do |t|
      t.integer :item_id
      t.integer :job_id
    end
  end

  def down
  end
end
