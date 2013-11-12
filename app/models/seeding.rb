class Seeding < ActiveRecord::Base
  belongs_to :bean
  belongs_to :crop
end
