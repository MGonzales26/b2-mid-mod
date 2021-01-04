require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe "relationship" do
    it {should belong_to :studio}
    it {should have_many :movies_actors}
    it {should have_many(:actors).through(:movies_actors)}
  end

  describe "class methods" do
    describe "::age_list" do
      it "lists actors youngest to oldest" do
        brendan = Actor.create!(name: 'Brendan Fraser', age: 31)
        rachel = Actor.create!(name: 'Rachel Weisz', age: 29)

        # expect(Actor.age_list).to eq([brendan.name, rachel.name])
      end
    end
  end
end
