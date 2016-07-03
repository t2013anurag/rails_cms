class SectionEdit < ActiveRecord::Base
	belongs_to :editor, class_name: "AdminUser", foreign_key:"admin_user_id"
	# here we define that in the above don't look for key of editor instead
	# use admin_user_id as the foreign key
	belongs_to :section
end
