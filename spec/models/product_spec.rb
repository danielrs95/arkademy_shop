require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'when data provided is valid' do
    let(:params) { { name: 'Sneakers', price: 49.99, quantity: 4 } }

    it 'saves the instance' do
      expect(described_class.new(params).save!).to eq true
    end

    it {
      expect do
        described_class.new(params).save!
      end.to change { Product.all.size }.by(1)
    }
  end

  context 'when data provided is invalid' do
    let(:params) { { price: 49.99, quantity: 4 } }

    it 'raises an ActiveRecord::RecordInvalid exception' do
      expect do
        described_class.new(params).save!
      end.to raise_error(ActiveRecord::RecordInvalid)
    end
  end
end
