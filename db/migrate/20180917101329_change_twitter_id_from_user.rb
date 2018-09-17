class ChangeTwitterIdFromUser < ActiveRecord::Migration[5.2]
  def change
    change_column(:users, :twitter_id, :integer, :limit => 8)
  end
end
