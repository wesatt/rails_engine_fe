# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Item do
  it 'exists and has attributes' do
    item_hash = {
      id: 4,
      attributes: {
        name: 'I am an item',
        merchant_id: 1
      }
    }
    item = Item.new(item_hash)

    expect(item).to be_a(Item)
    expect(item.id).to eq(4)
    expect(item.merchant_id).to eq(1)
    expect(item.name).to eq('I am an item')
  end
end
