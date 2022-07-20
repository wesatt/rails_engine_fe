# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RailsEngineService do
  describe 'class methods RailsEngineService' do
    it '.conn establishes the connection to the API service' do
      new_connection = RailsEngineService.conn

      expect(new_connection).to be_a Faraday::Connection
    end

    it '.all_merchants returns a JSON of all merchants' do
      json = RailsEngineService.all_merchants

      binding.pry

      expect(json).to be_a(Hash)
      expect(json[:results]).to be_a(Array)
    end

    it '.merchant_items(id) returns a JSON of all the items for a merchant' do
      json = RailsEngineService.all_merchants

      binding.pry

      expect(json).to be_a(Hash)
      expect(json[:results]).to be_a(Array)
    end
  end
end
