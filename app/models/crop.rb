class Crop < ActiveRecord::Base
  belongs_to :farm
  has_many :beans, through: :cropages
end
