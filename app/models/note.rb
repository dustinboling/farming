class Note < ActiveRecord::Base
	belongs_to :notable, polymorphic: true
	has_many :comments, as: :commentable
end
