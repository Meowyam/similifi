class Changeusertouser < ActiveRecord::Migration
  def self.up
      rename_column :messages, :user_name, :touser_name
  end

  def down
      rename_column :messages, :touser_name, :user_name
  end
end
