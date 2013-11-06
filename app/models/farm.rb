class Farm < ActiveRecord::Base
  belongs_to :user
  has_many :beans
end
