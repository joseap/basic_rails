#not being used yet

class Post < ActiveRecord::Base
	validates :content, :length => { :maximum => 140 }
	belongs_to :user
end
