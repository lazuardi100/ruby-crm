class ChangeRoleInUser < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :role, :integer, default: 1
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
