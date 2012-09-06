class CreatePrivatepostships < ActiveRecord::Migration
  def change
    create_table :privatepostships do |t|
      t.integer :user_id
      t.integer :privatepost_id

      t.timestamps
    end

    add_index :privatepostships, :user_id
    add_index :privatepostships, :privatepost_id
  end
end
