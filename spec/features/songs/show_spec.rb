require "rails_helper"

describe "As a user" do
  describe "when I visit the path for a specific song songs/1" do
    it "the user sees each song title and playcount" do
      artist_1 = Artist.create(name: "carly")
      song_1 = artist_1.songs.create(title:       "I Really Like You",
                           length:      208,
                           play_count:  243810867)

      visit "/songs/#{song_1.id}"

      expect(page).to have_content("#{song_1.title}")
      expect(page).to have_content("Length: #{song_1.length}")
      expect(page).to have_content("Play Count: #{song_1.play_count}")
      expect(page).to have_link("All Songs")
    end
  end
end
