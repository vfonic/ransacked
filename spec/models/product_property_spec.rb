require 'rails_helper'

module Sacked
  RSpec.describe 'ProductProperty' do
    it 'correctly searches properties by name' do
      property = create(:property, name: 'sad')
      product_property = create(:product_property, property: property)

      product_properties = Property.first.product_properties
                                   .ransack(property_name_cont: 'asd').result
      binding.pry
    end
  end
end
