class ProductProperty < ActiveRecord::Base
  belongs_to :property#, class_name: 'Sacked::Property', inverse_of: :product_properties

  # delegate :name, to: :property, prefix: true, allow_nil: true

  def self.ransackable_attributes(auth_object = nil)
    ['property_name']
  end
end
