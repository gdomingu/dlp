class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :identifications_worker_profiles, :indentification_id, :identification_id

  end
end
