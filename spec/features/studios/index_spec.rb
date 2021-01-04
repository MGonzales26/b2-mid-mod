require 'rails_helper'

describe "Movies Index Page" do
  describe "as a vistor" do
    it "lists all Movie Studios and underneath each the names of all their movies" do
      disney = Studio.create!(name: 'Disney', location: 'Burbank, CA')
      universal = Studio.create!(name: 'Universal Studios', location: 'Universal City, CA')

      beauty = Movie.create!(title: 'Beauty and the Beast', creation_year: 1991, genre: 'Family/Kids', studio_id: disney.id)
      mummy = Movie.create!(title: 'The Mummy', creation_year: 1999, genre: 'Action-Adventure', studio_id: universal.id)

      visit "/studios"

      expect(page).to have_content(disney.name)
      expect(page).to have_content(disney.location)
      expect(page).to have_content(beauty.title)
      expect(page).to have_content(universal.name)
      expect(page).to have_content(universal.location)
      expect(page).to have_content(mummy.title)
    end
  end
end