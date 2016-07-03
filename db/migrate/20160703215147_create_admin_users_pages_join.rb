class CreateAdminUsersPagesJoin < ActiveRecord::Migration
  def change
    create_table :admin_users_pages, id: false do |t| 
    # id = false as we dont want any primary key in the join table
    	t.integer "admin_user_id"
    	t.integer "page_id"
    end
    add_index :admin_users_pages, ["admin_user_id", "page_id"]
    # creates index on both columns ["admin_user_id", "page_id"]
  end
end
