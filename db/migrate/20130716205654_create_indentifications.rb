class CreateIndentifications < ActiveRecord::Migration
  def change
    create_table :indentifications do |t|
      t.string :name

      t.timestamps
    end
  end
end
