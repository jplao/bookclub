require 'rails_helper'

describe Review, type: :model do
  describe 'Relationship' do
    it { should belong_to(:book) }
  end

  describe "validations" do
    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:description)}
    it {should validate_presence_of(:score)}
  end

  describe 'class methods' do
    before(:each) do
    @user = User.create(name: "Joe")
    @illuminae = Book.create(title: 'Illuminae', pages: 608, year: 2015)
    @review_1 = @illuminae.reviews.create(title: 'Loved it!',
                            description: 'Instead of narrative, this book is presented through transcripts of interviews describing events, email conversations, reports, graphic elements.' ,
                            score: 5,
                            user: @user)
    @review_2 = @illuminae.reviews.create(title: 'Firefly Meets 2001: A Space Odyssey',
                            description: "Illuminae is like no other book I've ever read. It's told dossier-style, as a series of Instant-Message conversations, emails, interviews, and video transcriptions. And the rambling monologues of an ailing Artificial Intelligence system, BUT THAT'S PROBABLY NOT IMPORTANT.",
                            score: 3,
                            user: @user)
    @review_3 = @illuminae.reviews.create(title: 'Fast paced story',
                            description: 'Told through a series of case files, IM’s, emails, interviews, and more, Illuminae is a fast paced story about two regular teenagers forced to step up in order to save themselves and the ones they love.',
                            score: 4,
                            user: @user)
    end
    it '.average_rating' do
      expect(@illuminae.reviews.average_rating).to eq 4

      obsidio = Book.create(reviews: [], title: 'Obsidio', pages: 621, year: 2018)
      expect(obsidio.reviews.average_rating).to eq 0
    end
    it '.top_three' do
      expect(@illuminae.reviews.top_three).to eq [@review_1, @review_3, @review_2]
    end
  end
end
