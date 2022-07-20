# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Merchant do
  it 'exists and has attributes' do
    merchant = Merchant.new(id: 1, name: 'I am a merchant')

    expect(merchant).to be_a(Merchant)
    expect(merchant.id).to eq(1)
    expect(merchant.name).to eq('I am a merchant')
  end
end
