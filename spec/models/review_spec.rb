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
    describe '.average_rating' do
      xit 'calculates the average rating score' do
      illuminae = Book.create(reviews: [], title: 'Illuminae', pages: 608, year: 2015)

      review_4 = Review.create(title: 'Absolute perfection. This is how finales are supposed to be written',
                            description: 'Wow. Where do I even begin? This is one of my favorite series of all time, and I was so eager and terrified to see it end.',
                            score: 5)
      review_5 = Review.create(title: "Don't tell me Science Fiction is dead",
                            description: 'A million stars for the BEST series finale I have ever read! I want everyone to read it so this review will be spoiler-free.',
                            score: 4)
      obsidio = Book.create(reviews: [review_4, review_5], title: 'Obsidio', pages: 621, year: 2018)


      expect(illuminae.reviews.average_rating).to eq 0
      end
    end
    describe '.top_three' do
      xit 'returns the top 3 reviews by score' do
        illuminae = Book.create(title: 'Illuminae', pages: 608, year: 2015)
        review_1 = illuminae.reviews.create(title: 'Loved it!',
                                description: 'Instead of narrative, this book is presented through transcripts of interviews describing events, email conversations, reports, graphic elements.' ,
                                score: 5)
        review_2 = illuminae.reviews.create(title: 'Firefly Meets 2001: A Space Odyssey',
                                description: "Illuminae is like no other book I've ever read. It's told dossier-style, as a series of Instant-Message conversations, emails, interviews, and video transcriptions. And the rambling monologues of an ailing Artificial Intelligence system, BUT THAT'S PROBABLY NOT IMPORTANT.",
                                score: 3)
        review_3 = illuminae.reviews.create(title: 'Fast paced story',
                                description: 'Told through a series of case files, IM’s, emails, interviews, and more, Illuminae is a fast paced story about two regular teenagers forced to step up in order to save themselves and the ones they love.',
                                score: 5)
        review_4 = illuminae.reviews.create(title: 'Absolute perfection. This is how finales are supposed to be written',
                              description: 'Wow. Where do I even begin? This is one of my favorite series of all time, and I was so eager and terrified to see it end.',
                              score: 5)
      expect(illuminae.reviews.top_three).to eq [review_1, review_3, review_4]
      end
    end
  end
end
