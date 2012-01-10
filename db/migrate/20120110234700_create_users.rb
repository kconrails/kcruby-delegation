class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email
      t.string :password
      t.integer :role_id

      t.timestamps
    end
    
    add_index :users, :email, :unique => true
    add_index :users, :role_id
  end

  def self.down
    remove_index :users, :email, :unique => true
    remove_index :users, :role_id

    drop_table :users
  end
end
