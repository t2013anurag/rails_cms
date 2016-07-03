class AdminUser < ActiveRecord::Base


# by default rails will assume table name as admin_users
# we need to define the table that needs to be used here if we want a different table
	# self.table_name = "users"
	has_and_belongs_to_many :pages
	has_many :section_edits
	has_many :sections, :through => :section_edits
end
