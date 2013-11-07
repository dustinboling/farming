class Bean < ActiveRecord::Base
  belongs_to :farm
  has_many :crops, through: :cropage
end
