require 'rails_helper'

describe "Movies Index Page" do
  describe "as a vistor" do
    it "lists all Movie Studios and underneath each the names of all their movies" do
      disney = Studio.create!(name: 'Disney', location: 'Burbank, CA')
      universal = Studio.create!(name: 'Universal Studios', location: 'Universal City, CA')

      beauty = Movie.create!(title: 'Beauty and the Beast', creation_year: 1991, genre: 'Family/Kids')
      mummy = Movie.create!(title: 'The Mummy', creation_year: 1999, genre: 'Action-Adventure')

      
    end
  end
end