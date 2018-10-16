require 'rails_helper'

describe User, type: :model do
  describe 'Relationship' do
    it { should have_many(:reviews) }
  end

  describe "validations" do
    it {should validate_presence_of(:name)}
  end
end
