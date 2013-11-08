class Bean < ActiveRecord::Base
  belongs_to :farm
  has_many :cropages, dependent: :destroy
  has_many :crops, through: :cropages

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
