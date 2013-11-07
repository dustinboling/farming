class Farm < ActiveRecord::Base
  belongs_to :user
  has_many :beans
  has_many :crops
end
