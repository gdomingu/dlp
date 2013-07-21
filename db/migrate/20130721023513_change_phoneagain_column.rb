class ChangePhoneagainColumn < ActiveRecord::Migration
  def change
   change_column :jobs, :phone_number, :string
  end
end
