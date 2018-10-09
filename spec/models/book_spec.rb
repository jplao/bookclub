require 'rails_helper'

describe Book, type: :model do
  describe 'Relationship' do
    it { should have_many(:reviews) }
    it { should have_many(:book_authors) }
    it { should have_many(:authors).through(:book_authors) }
  end
end
