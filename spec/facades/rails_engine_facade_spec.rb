# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RailsEngineFacade do
  describe 'instance methods' do
    let!(:rails_eng_fac) { RailsEngineFacade.new }
    it '#all_merchants makes a service call and returns an array of merchant POROs' do
      merchants = rails_eng_fac.all_merchants

      expect(merchants).to be_a Array
      expect(merchants.count).to eq(100)
      expect(merchants).to be_all Merchant
    end

    it '#merchant_items(id) makes a service call and returns an array of item POROs associated with a merchant' do
      merchant1_items = rails_eng_fac.merchant_items(1)

      expect(merchant1_items).to be_a Array
      expect(merchant1_items.count).to eq(15)
      expect(merchant1_items).to be_all Item
    end

    it '#merchant_find(id) makes a service call and returns a merchant PORO' do
      merchant = rails_eng_fac.merchant_find(1)

      expect(merchant).to be_a Merchant
    end
  end
end
