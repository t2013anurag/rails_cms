class CreateUsers < ActiveRecord::Migration
  # def change
  #   create_table :users do |t|

  #     t.timestamps
  #   end
  # end

  def up
    create_table :users do |t|
    	# t.column "first_name", :string, :limit => 25
    	# t.string "last_name", :limit => 50
    	# t.string "email", :default => '', :null => false
    	# t.string "password", :limit => 40

    	#or
    	t.column "first_name", :string, limit: 25
    	t.string "last_name", limit: 50
    	t.string "email", default: '', null: false
    	t.string "password", limit: 40

    	# t.datetime "created_at"
    	# t.datetime "updated_at"
    	# created_at and updated_at are by default added by using t.timestamps

    	t.timestamps
    end
  end

  def down
  	drop_table :users
  end

end
