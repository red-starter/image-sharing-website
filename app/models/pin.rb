class Pin < ActiveRecord::Base
	belongs_to :user
	# allows an attahced image file and specifies it
	# allows us to resize images just by calling :medium or :thumb on our view pages
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb =>"100x100>"}
	# allows all image types to be uploaded
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	attr_accessor :image_file_name
	attr_accessor :image_content_type
	attr_accessor :image_file_size
	attr_accessor :image_updated_at
end
