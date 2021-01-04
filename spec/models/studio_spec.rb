require 'rails_helper'

RSpec.describe Studio, type: :model do
  describe "relationship" do
    it {should have_many :movies}
  end
end
