class Post < ActiveRecord::Base
	belongs_to :user, :class_name => "User", :foreign_key => "user_id"
	has_many :comment
	validates_presence_of :title
	validates_presence_of :content
end
