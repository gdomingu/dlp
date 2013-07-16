class CreateTrainingRequests < ActiveRecord::Migration
  def change
    create_table :training_requests do |t|
      t.string :name

      t.timestamps
    end
  end
end
