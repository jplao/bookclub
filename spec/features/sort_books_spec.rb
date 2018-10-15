# require 'rails_helper'
# RSpec.describe "a visitor visits the book index page" do
#   xit 'should show a list of all books' do
#
#     fall_apart = Book.create(title: 'Things Fall Apart', pages: 209, year: 1994)
#     fall_apart.authors.create(name: "Chinua Achebe")
#     review_29 = fall_apart.reviews.create(title: 'A Classic',
#                             description: 'A true class of world literature...A masterpiece that has inspired generations of writers in Nigeria, across Africa, and around the world.' ,
#                             score: 5)
#
#     review_30 = fall_apart.reviews.create(title: 'Exhilirating',
#                             description: 'A magical writer-one of the greatest of the twentieht century.' ,
#                             score: 5)
#
#     review_31 = fall_apart.reviews.create(title: 'A breath of reality',
#                             description: 'Chinua Achebe has shown that a mind that observes clearly but feels deeply enough to afford laughter may be more wise than all the politicians and journalists.' ,
#                             score: 5)
#
#     red_war = Book.create(title: 'Red War', pages: 384, year: 2018)
#     red_war.authors.create(name: "Kyle Mills")
#     review_32 = red_war.reviews.create(title: 'Outstanding',
#                             description: "Evens lead to a dramatic, you-got-your-money's-worth conclusion.Good, escapist fun." ,
#                             score: 4)
#     review_33 = red_war.reviews.create(title: 'Outstanding',
#                             description: "All action from start to finish...a page-turner all the way up to the climatic finale that you just can't put down." ,
#                             score: 5)
#
#     u_give = Book.create(title: 'The Hate U Give', pages: 447, year: 2017)
#     u_give.authors.create(name: "Angie Thomas")
#     review_34 = u_give.reviews.create(title: 'Fearless',
#                             description: "Fearlessly honest and heartbreakingly human. Everyone should read this book.." ,
#                             score: 5)
#     review_35 = u_give.reviews.create(title: 'Unrelenting',
#                             description: "Thomas has penned a powerful, in-your-face novel that will similiarly galvanize fans of Kekla Magoon's How It Went Down and Jason Reynolds and Brendan Kiely's All American Boys." ,
#                             score: 5)
#
#     edge_of_night = Book.create(title: "The Ragged Edge of Night", pages: 340, year: 2018)
#     edge_of_night.authors.create(name: "Olivia Hawker")
#     review_36 = edge_of_night.reviews.create(title: 'Harrowing',
#                             description: "Harrowing and yet life-affirming, told in the richest, most eloquent prose, The Ragged Edge of Night is one of the World War II novels that will stand out and be remembered." ,
#                             score: 3)
#     review_37 = edge_of_night.reviews.create(title: 'Emotional',
#                             description: "Emotionally charged and beautifully written…Olivia Hawker shows that life can move forward and unexpected love can triumph, even when it strikes the most unlikely people during brutal years of conflict. This is an unusual story based on a true one, making it all the more fascinating and satisfying." ,
#                             score: 2)
#     review_38 = edge_of_night.reviews.create(title: 'Emotional',
#                             description: "When the world is at war, can one person make a difference? This moving historical novel immerses readers in World War II-era Germany, where even small acts of resistance have terrible consequences…Eye-opening and ultimately inspiring." ,
#                             score: 5)
#     review_39 = edge_of_night.reviews.create(title: 'History',
#                             description: "Set in Nazi Germany, The Ragged Edge of the Night is a powerful story of a priest turned husband turned resistance leader. Hateful forces had grown so powerful that they destroyed a nation and were marching on to threaten the world. In the face of such power it would be easy to grow complacent and hopeless, but this story of a simple man making the difficult choice to fight for his deepest values reminds us of the best of humanity." ,
#                             score: 5)
#     review_40 = edge_of_night.reviews.create(title: 'Perspective',
#                             description: "An introspective, poignant voyage through one man’s struggle to reconcile his past. A beautifully written book highlighting the senseless choices that good people were forced to make." ,
#                             score: 5)
#
#     daughters_of_the_lake = Book.create(title: "Daughters of the Lake", pages: 317, year: 2014)
#     daughters_of_the_lake.authors.create(name: "Wendy Webb")
#     review_41 = daughters_of_the_lake.reviews.create(title: 'Well Delineated',
#                             description: "In Wendy Webb’s entrancing Daughters of the Lake, dreams open a door between the dead and the living, a lake spirit calls to a family of gifted women, and a century-old murder is solved under the cover of fog. This northern gothic gem is everything that is delicious, spooky, and impossible to put down." ,
#                             score: 5)
#
#     visit "/books?sort=avg_score&direction=DESC"
#
#     expect(page).to have_content(fall_apart.title)
#     expect(page).to have_content(fall_apart.pages)
#     expect(page).to have_content(review_29.description)
#
#   end
# end
