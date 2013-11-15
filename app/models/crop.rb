class Crop < ActiveRecord::Base
  belongs_to :farm
  has_many :seedings, dependent: :destroy
  has_many :beans, through: :seedings
  has_many :notes, as: :notable
end
