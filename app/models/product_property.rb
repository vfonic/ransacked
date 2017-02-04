class ProductProperty < ActiveRecord::Base
  belongs_to :property

  def self.ransackable_attributes(auth_object = nil)
    ['property_name']
  end
end
