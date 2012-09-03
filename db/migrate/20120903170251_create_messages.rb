class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :content
      t.integer :user_id
      t.string :user_name

      t.timestamps
    end
    add_index :messages, [:user_id, :created_at]
    add_index :messages, [:user_name, :created_at]
    add_index :messages, [:user_id, :user_name]
  end
end
