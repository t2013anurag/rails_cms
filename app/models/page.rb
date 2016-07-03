class Page < ActiveRecord::Base

	belongs_to :subject
	# is a foreign key in the pages table to link to the subject

end
