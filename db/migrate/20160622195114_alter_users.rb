class AlterUsers < ActiveRecord::Migration

  # def change
  # 	rename_table("users", "admin_users")
  # end

  def up
	# rename_table("users", "admin_users")
	#  	add_column("admin_users", "username", :string, limit: 25, after: "email")
	#  	change_column("admin_users", "email", :string, limit: 100)
	#  	rename_column("admin_users", "password", "hashed_password")
	#  	puts "** Adding an index is next **"
	#  	add_index("admin_users", "username")

	# or this way

  	rename_table :users, :admin_users
  	add_column :admin_users, :username, :string, limit: 25, after: "email"
  	change_column :admin_users, :email, :string, limit: 100
  	rename_column :admin_users, :password, :hashed_password
  	add_index :admin_users, :username
  end


  def down
  	# Note every command in up is done in reverse order in down
	  	remove_index("admin_users", "username")
	  	rename_column("admin_users", "hashed_password", "password")
		change_column("admin_users", "email", :string, default: '', null: false)
		remove_column("admin_users", "username")
		rename_table("admin_users", "users") 	
  end
end
