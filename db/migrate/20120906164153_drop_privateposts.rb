class DropPrivateposts < ActiveRecord::Migration
  def up
      drop_table :privateposts
      drop_table :privatepostships
  end

  def down
  end
end
