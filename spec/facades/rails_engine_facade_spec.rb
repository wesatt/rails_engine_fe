# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RailsEngineFacade do
  describe 'class methods' do
    it '#all_merchants makes a service call and returns an array of merchant POROs' do
      merchants = RailsEngineFacade.all_merchants

      expect(merchants).to be_a Array
      expect(merchants.count).to eq(100)
      expect(merchants).to be_all Merchant
    end

    it '#merchant_items(id) makes a service call and returns an array of item POROs associated with a merchant' do
      merchant1_items = RailsEngineFacade.merchant_items(1)

      expect(merchant1_items).to be_a Array
      expect(merchant1_items.count).to eq(15)
      expect(merchant1_items).to be_all Item
    end
  end
end
