require 'rails_helper'

RSpec.describe 'products/show', type: :view do
  let(:valid_attributes) { { name: 'Sneakers', price: 49.99, quantity: 4 } }

  before(:each) do
    @product = assign(:product, Product.create!(valid_attributes))
  end

  it 'renders attributes in <p>' do
    render
  end
end
