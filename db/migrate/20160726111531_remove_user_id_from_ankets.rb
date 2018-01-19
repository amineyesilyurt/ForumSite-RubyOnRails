class RemoveUserIdFromAnkets < ActiveRecord::Migration
  def change
    remove_column :ankets, :user_id, :integer
  end
end
