require 'rails_helper'

describe User, type: :model do
  describe 'Relationship' do
    it { should have_many(:reviews) }
  end

  describe "validations" do
    it {should validate_presence_of(:name)}
  end

  describe "instance methods" do
    it 'can sort reviews' do
    illuminae = Book.create(title: 'Illuminae', pages: 608, year: 2015)

    review_1 = illuminae.reviews.create(title: 'Loved it!',
                            description: 'Instead of narrative, this book is presented through transcripts of interviews describing events, email conversations, reports, graphic elements.' ,
                            score: 5)
    review_2 = illuminae.reviews.create(title: 'Firefly Meets 2001: A Space Odyssey',
                            description: "Illuminae is like no other book I've ever read. It's told dossier-style, as a series of Instant-Message conversations, emails, interviews, and video transcriptions. And the rambling monologues of an ailing Artificial Intelligence system, BUT THAT'S PROBABLY NOT IMPORTANT.",
                            score: 3)

    user_1 = User.create(name: "Renny Johnson")
    user_1.reviews << [review_1,review_2]

    expect(user_1.sorted_reviews(sort: 'old')).to eq [review_1, review_2]
    expect(user_1.sorted_reviews(sort: 'new')).to eq [review_2, review_1]
    end
  end
end
