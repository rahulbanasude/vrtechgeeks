class AddAdminUserIdToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :admin_user_id, :integer
  end
end
