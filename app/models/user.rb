class User < ActiveRecord::Base

	belongs_to :department

	mount_uploader :image, UserImageUploader

	validates_presence_of :name, :mobile, :address
	
end
