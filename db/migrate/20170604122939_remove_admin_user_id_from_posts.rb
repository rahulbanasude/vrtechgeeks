class RemoveAdminUserIdFromPosts < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :admin_user_id, :integer
  end
end
