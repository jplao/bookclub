require File.expand_path('../../config/environment.rb', __FILE__)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
achebe = Author.create(name: "Chinua Achebe")
fall_apart = Book.create(title: 'Things Fall Apart', pages: 209, year: 1994)
fall_apart.reviews.create(title: 'A Classic',
                        description: 'A true class of world literature...A masterpiece that has inspired generations of writers in Nigeria, across Africa, and around the world.' ,
                        score: 5,
                        user_name: 'Barak')

fall_apart.reviews.create(title: 'Exhilirating',
                        description: 'A magical writer-one of the greatest of the twentieht century.' ,
                        score: 5,
                        user_name: 'Atwood')

fall_apart.reviews.create(title: 'A breath of reality',
                        description: 'Chinua Achebe has shown that a mind that observes clearly but feels deeply enough to afford laughter may be more wise than all the politicians and journalists.' ,
                        score: 5,
                        user_name: 'Atwood')

flynn = Author.create(name: "Vince Flynn")
mills = Author.create(name: "Kyle Mills")
red_war = Book.create(title: 'Red War', pages: 384, year: 2018)
red_war.reviews.create(title: 'Outstanding',
                        description: "Evens lead to a dramatic, you-got-your-money's-worth conclusion.Good, escapist fun." ,
                        score: 4,
                        user_name: 'Publishers Weekly')
red_war.reviews.create(title: 'Outstanding',
                        description: "All action from start to finish...a page-turner all the way up to the climatic finale that you just can't put down." ,
                        score: 5,
                        user_name: 'The Real Book Spy')

thomas = Author.create(name: "Angie Thomas")
u_give = Book.create(title: 'The Hate U Give', pages: 447, year: 2017)
u_give.reviews.create(title: 'Fearless',
                        description: "Fearlessly honest and heartbreakingly human. Everyone should read this book.." ,
                        score: 5,
                        user_name: 'John Green')
u_give.reviews.create(title: 'Unrelenting',
                        description: "Thomas has penned a powerful, in-your-face novel that will similiarly galvanize fans of Kekla Magoon's How It Went Down and Jason Reynolds and Brendan Kiely's All American Boys." ,
                        score: 5,
                        user_name: 'John Green')
hawker = Author.create(name: "Olivia Hawker")
edge_of_night = Book.create(title: "The Ragged Edge of Night", pages: 340, year: 2018)
edge_of_night.reviews.create(title: 'Harrowing',
                        description: "Harrowing and yet life-affirming, told in the richest, most eloquent prose, The Ragged Edge of Night is one of the World War II novels that will stand out and be remembered." ,
                        score: 3,
                        user_name: 'Rhys Bowen')
edge_of_night.reviews.create(title: 'Emotional',
                        description: "Emotionally charged and beautifully written…Olivia Hawker shows that life can move forward and unexpected love can triumph, even when it strikes the most unlikely people during brutal years of conflict. This is an unusual story based on a true one, making it all the more fascinating and satisfying." ,
                        score: 2,
                        user_name: 'Ann Howard')
edge_of_night.reviews.create(title: 'Emotional',
                        description: "When the world is at war, can one person make a difference? This moving historical novel immerses readers in World War II-era Germany, where even small acts of resistance have terrible consequences…Eye-opening and ultimately inspiring." ,
                        score: 5,
                        user_name: 'Elizabeth Blackwell')
edge_of_night.reviews.create(title: 'History',
                        description: "Set in Nazi Germany, The Ragged Edge of the Night is a powerful story of a priest turned husband turned resistance leader. Hateful forces had grown so powerful that they destroyed a nation and were marching on to threaten the world. In the face of such power it would be easy to grow complacent and hopeless, but this story of a simple man making the difficult choice to fight for his deepest values reminds us of the best of humanity." ,
                        score: 5,
                        user_name: 'Laila Ibrahim')
edge_of_night.reviews.create(title: 'Perspective',
                        description: "An introspective, poignant voyage through one man’s struggle to reconcile his past. A beautifully written book highlighting the senseless choices that good people were forced to make." ,
                        score: 5,
                        user_name: 'Gemma Liviero')

webb = Author.create(name: "Wendy Webb")
daughters_of_the_lake = Book.create(title: "Daughters of the Lake", pages: 317, year: 2014)
daughters_of_the_lake.reviews.create(title: 'Well Delineated',
                        description: "In Wendy Webb’s entrancing Daughters of the Lake, dreams open a door between the dead and the living, a lake spirit calls to a family of gifted women, and a century-old murder is solved under the cover of fog. This northern gothic gem is everything that is delicious, spooky, and impossible to put down." ,
                        score: 5,
                        user_name: 'Emily Carpenter')

leigh = Author.create(name: "Melinda Leigh")
what_ive_done = Book.create(title: "What I've Done", pages: 333, year: 2007)
daughters_of_the_lake.reviews.create(title: 'Well Delineated',
                        description: "Captivating from the beginning to end." ,
                        score: 5,
                        user_name: 'Will Burr')
daughters_of_the_lake.reviews.create(title: 'Provoking',
                        description: "Pick it up and you won't put it down." ,
                        score: 4,
                        user_name: 'Roger Feddel')
daughters_of_the_lake.reviews.create(title: 'Emotionally Charged',
                        description: "Not for the faint of heart, read with caution." ,
                        score: 2,
                        user_name: 'Christa Queen')
daughters_of_the_lake.reviews.create(title: 'Lackluster',
                        description: "Money can be spent on a better book." ,
                        score: 1,
                        user_name: 'Rachel Wilhelm')
daughters_of_the_lake.reviews.create(title: 'Must Read',
                        description: "Enjoyable enough to the point of obsession." ,
                        score: 5,
                        user_name: 'Linda Pez')
daughters_of_the_lake.reviews.create(title: 'Roller-Coaster-Fun',
                        description: "Makes the brain wild while taming the heart.." ,
                        score: 5,
                        user_name: 'Bill Doherty')
daughters_of_the_lake.reviews.create(title: 'Final Thoughts',
                        description: "If you are looking for a late night read to relax to, this is it." ,
                        score: 5,
                        user_name: 'Roxanne Chiles')
