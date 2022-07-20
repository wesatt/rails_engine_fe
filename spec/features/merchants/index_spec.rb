# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Merchants Index View', type: :feature do
  describe 'User Story 1' do
    # As a visitor,
    # When I visit '/merchants'
    # I should see a list of merchants by name
    # and when I click the merchant's name
    # I should be on page '/merchants/:id'

    # And I should see a list of items that merchant sells.
    it 'has links to each' do
      visit '/merchants'

      expect(page).to have_link('Schroeder-Jerde')
      expect(page).to have_link('Klein, Rempel and Jones')
      expect(page).to have_link('Wisozk, Hoeger and Bosco')

      click_link('Schroeder-Jerde')

      expect(current_path).to eq('/merchants/1')
    end
  end
end
