class Bean < ActiveRecord::Base
  belongs_to :farm
  has_many :seedings, dependent: :destroy
  has_many :crops, through: :seedings

  def name
  	if spouse_name?
  		first_name + ' & ' + spouse_name + ' ' + last_name
  	else
  		first_name + ' ' + last_name
  	end
  end

  def address
  	street_address + ', ' + city + ', ' + state + ' ' + zip
  end
end
