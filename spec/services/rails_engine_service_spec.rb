# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RailsEngineService do
  describe 'instance methods RailsEngineService' do
    let!(:rails_eng) { RailsEngineService.new }
    it '#conn establishes the connection to the API service' do
      new_connection = rails_eng.conn

      expect(new_connection).to be_a Faraday::Connection
    end

    it '#all_merchants returns a JSON of all merchants' do
      json_array = rails_eng.all_merchants[:data]
      merchant_hash = json_array.first

      expect(json_array).to be_a(Array)
      expect(merchant_hash).to be_a(Hash)
      expect(merchant_hash[:id]).to eq(1)
      expect(merchant_hash[:type]).to eq('merchant')
      expect(merchant_hash[:attributes][:name]).to eq('Schroeder-Jerde')
    end

    it '#merchant_items(id) returns a JSON of all the items for a merchant' do
      json_array = rails_eng.merchant_items(1)[:data]
      item_hash = json_array.first

      expect(json_array).to be_a(Array)
      expect(item_hash).to be_a(Hash)
      expect(item_hash[:id].to_i).to eq(4)
      expect(item_hash[:type]).to eq('item')
      expect(item_hash[:attributes][:name]).to eq('Item Nemo Facere')

    end

    it '#merchant_find(id) returns a JSON for a single merchant' do
      json = rails_eng.merchant_find(1)

      expect(json).to be_a(Hash)
      expect(json[:data]).to be_a(Hash)
      expect(json[:data][:id].to_i).to eq(1)
      expect(json[:data][:type]).to eq('merchant')
      expect(json[:data][:attributes][:name]).to eq('Schroeder-Jerde')
    end
  end
end
