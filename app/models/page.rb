class Page < ActiveRecord::Base

	belongs_to :subject
	# is a foreign key in the pages table to link to the subject
	
	# has_and_belongs_to_many :admin_users
	
	# This menas a page ha many admin_users which doesn't make sense
	# A page can have many editors, so to change to editors do below
	
	has_and_belongs_to_many :editors, class_name:"AdminUser"
end
