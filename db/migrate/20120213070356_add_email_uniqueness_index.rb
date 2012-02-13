class AddEmailUniquenessIndex < ActiveRecord::Migration
  def up
	  # Add index to the "Users" table for "email" uniqueness
	  add_index :users, :email, :unique => true
  end

  def down
	  remove_index :users, :email
  end
end
