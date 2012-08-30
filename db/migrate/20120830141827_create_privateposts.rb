class CreatePrivateposts < ActiveRecord::Migration
  def change
    create_table :privateposts do |t|
      t.string :content
      t.integer :user_id
      t.string :touser_name

      t.timestamps
    end
    add_index :privateposts, [:user_id, :touser_name, :created_at]
  end
end
