require 'rails_helper'

RSpec.describe 'admin/products/edit', type: :view do
  before(:each) do
    @product = assign(:product, Product.create!({ name: 'Sneakers', price: 49.99, quantity: 4 }))
  end

  it 'renders the edit product form' do
    render
  end
end
