class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :job_id
      t.string :prompt1
      t.string :prompt2
      t.string :prompt3
      t.string :prompt4
      t.string :prompt5
      t.string :answer1
      t.string :answer2
      t.string :answer3
      t.string :answer4
      t.string :answer5

      t.timestamps
    end
  end
end
