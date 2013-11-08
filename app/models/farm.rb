class Farm < ActiveRecord::Base
  belongs_to :user
  has_many :beans, dependent: :destroy
  has_many :crops, dependent: :destroy
end
