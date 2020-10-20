require 'rails_helper'

RSpec.describe 'Edit Artist' do
  describe 'As a visitor' do
    describe 'When I visit the edit artist form' do
      it 'I can update a specific artist' do
        artist = Artist.create(name: "Journey")
        visit "/artists/#{artist.id}"

        click_button 'Edit Artist'

        expect(current_path).to eq("/artists/#{artist.id}/edit")

        fill_in 'Name', with: 'Tim'
        click_on 'Update Artist'

        expect(current_path).to eq("/artists/#{artist.id}")
        expect(page).to have_content('Tim')
      end
    end
  end
end
