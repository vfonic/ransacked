class Property < ActiveRecord::Base
  has_many :product_properties, dependent: :delete_all, inverse_of: :property

  def self.ransackable_attributes(auth_object = nil)
    ['name']
  end
end
