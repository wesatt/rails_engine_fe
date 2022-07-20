# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Merchants Show View', type: :feature do
  describe 'User Story 1' do
    # As a visitor,
    # When I visit '/merchants'
    # I should see a list of merchants by name
    # and when I click the merchant's name

    # I should be on page '/merchants/:id'
    # And I should see a list of items that merchant sells.
    it 'has has a list of each item belonging to that merchant' do
      visit '/merchants/1'

      expect(page).to have_content('Item Nemo Facere')
      expect(page).to have_content('Item Rerum Est')
      expect(page).to_not have_content('Item Adipisci Sint')
    end
  end
end
