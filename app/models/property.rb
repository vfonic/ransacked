class Property < ActiveRecord::Base
  has_many :product_properties

  def self.ransackable_attributes(auth_object = nil)
    ['name']
  end
end
