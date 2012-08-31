class CreateExchanges < ActiveRecord::Migration
  def change
    create_table :exchanges do |t|
      t.integer :user_id
      t.integer :touser_id

      t.timestamps
    end

    add_index :exchanges, :user_id
    add_index :exchanges, :touser_id
  end
end
