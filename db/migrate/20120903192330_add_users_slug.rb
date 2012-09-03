class AddUsersSlug < ActiveRecord::Migration
  def up
      add_column :users, :slug, :string
  end

  def down
      remove_column :users, :slug, :string
  end
end
