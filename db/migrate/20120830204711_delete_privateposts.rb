class DeletePrivateposts < ActiveRecord::Migration
  def up
      drop_table :Privateposts
  end
end
