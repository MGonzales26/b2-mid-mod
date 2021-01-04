require 'rails_helper'

describe "Movies Show Page" do
  describe "as a visitor" do
    it "shows movies with details and actors listed alphabetically" do
      universal = Studio.create!(name: 'Universal Studios', location: 'Universal City, CA')

      mummy = Movie.create!(title: 'The Mummy', creation_year: 1999, genre: 'Action-Adventure', studio_id: universal.id)

      brendan = Actor.create!(name: 'Brendan Fraser', age: 31)
      rachel = Actor.create!(name: 'Rachel Weisz', age: 29)

      visit "/movies/#{mummy.id}"

      expect(page).to have_content(mummy.title)
      expect(page).to have_content(mummy.creation_year)
      expect(page).to have_content(mummy.genre)
      expect(page).to have_content(rachel.name)
      expect(page).to have_content(brendan.name)
    end
  end
end