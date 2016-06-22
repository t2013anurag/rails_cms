class CreatePages < ActiveRecord::Migration
  # def change
  #   create_table :pages do |t|

  #     t.timestamps
  #   end
  # end

  def up
  	create_table :pages do |t|
  		t.integer "subject_id"
  		# same as t.references :subject
  		t.string "name"
  		t.string "permalink"
  		t.integer "position"
  		t.boolean "visible", default: false
  		t.timestamps
  	end
  	add_index :pages, :subject_id # index on foreign key
  	add_index :pages, :permalink # for lookup of pages
  end

  def down
  	drop_table :pages
  end
end
