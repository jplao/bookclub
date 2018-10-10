require File.expand_path('../../config/environment.rb', __FILE__)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


kaufman = Author.create(name: 'Amie Kaufman')
kristoff = Author.create(name: 'Jay Kristoff')

illuminae = Book.create(title: 'Illuminae', pages: 608, year: 2015, author: [kaufman, kristoff])
illuminae.reviews.create(title: 'Loved it!',
                        description: 'Instead of narrative, this book is presented through transcripts of interviews describing events, email conversations, reports, graphic elements.' ,
                        score: 5,
                        user_name: 'Mike')
illuminae.reviews.create(title: 'Firefly Meets 2001: A Space Odyssey',
                        description: "Illuminae is like no other book I've ever read. It's told dossier-style, as a series of Instant-Message conversations, emails, interviews, and video transcriptions. And the rambling monologues of an ailing Artificial Intelligence system, BUT THAT'S PROBABLY NOT IMPORTANT.",
                        score: 3,
                        user_name: 'Sarah')
illuminae.reviews.create(title: 'Fast paced story',
                        description: 'Told through a series of case files, IM’s, emails, interviews, and more, Illuminae is a fast paced story about two regular teenagers forced to step up in order to save themselves and the ones they love.',
                        score: 5,
                        user_name: 'Destiny')

obsidio = Book.create(title: 'Obsidio', pages: 621, year: 2018, author: [kaufman, kristoff])
obsidio.reviews.create(title: 'Absolute perfection. This is how finales are supposed to be written',
                      description: 'Wow. Where do I even begin? This is one of my favorite series of all time, and I was so eager and terrified to see it end.',
                      score: 5,
                      user_name: 'Destiny')
obsidio.reviews.create(title: "Don't tell me Science Fiction is dead",
                      description: 'A million stars for the BEST series finale I have ever read! I want everyone to read it so this review will be spoiler-free.',
                      score: 4,
                      user_name: 'Sarah')

gemina = Book.create(title: 'Gemina', pages: 665, year: 2016, author: [kaufman, kristoff])
gemina.reviews.create(title: 'Fun YA Fiction',
                      description: 'Yup, this book is pretty amazing. I felt like it was better than Illuminae in some ways.',
                      score: 5,
                      user_name: 'Karen')

gemina.reviews.create(title: "If you liked Illuminae you'll like this book",
                      description: "Gemina is the second book in the Illuminae Files, and it was told in much the same vein as Illuminae. Where Illuminae took place on a series of spaceships, Gemina takes place at the Heimdall, a space station that sits on a seven-way rip in spacetime. The Heimdall is a wormhole generator and serves as the connection point between the ENTIRE CIVILIZED UNIVERSE and the outskirt systems, such as the Kerenza system.",
                      score: 3,
                      user_name: 'Sarah')

gemina.reviews.create(title: "A great addition to a fantastic series!",
                      description: "After I finished reading Illuminae, I had every intention of taking a short break before starting the next book in the trilogy, Gemina. But did I? OF COURSE NOT. On the day I finished it, I broke down and started Gemina.",
                      score: 4,
                      user_name: 'Rebecca')

zeff = Author.create(name: 'Randi Zeff')
listener = zeff.books.create(title: 'The Listner', pages: 290, year: 2017)

rollins = Author.create(name: 'James Rollins')
crucible = rollins.books.create(title: "Crucible: A Thriller", pages: 448, year: 2019)

amazonia = rollins.books.create(title: "Amazonia", pages: 544, year: 2009)
amazonia.reviews.create(title: 'A Creative Framework With Continuous Action',
                      description: "This was my first James Rollins book and it was a page turning thriller. The conceptual framework that kept the action moving was most creative. On the negative side readers have to suspend reality with regard to much of the story line. However as a positive, the action is almost continuous so one doesn't really have the time - or the inclination - to reflect on the absurdities.",
                      score: 4,
                      user_name: 'Mike')

amazonia.reviews.create(title: 'Five Stars',
                      description: "This is one of my all time favorite James Rollins books! I've read it several times over the years and decided to pick it back up again this past weekend. I stayed up half the night reading it from start to finish. The setting in the Amazon is amazing with fast paced action throughout the book. The descriptions of what they encounter in the jungle are so real you feel as if you are trekking along with them. I loved all the information on the medicinal properties of jungle plants and the unique tribes that live deep in the Amazon. After finishing the book, I did some research on the tribes and medicinal plants in the book. To my surprise, much of what Rollins wrote about is actually factual information.",
                      score: 5,
                      user_name: 'Karen')

amazonia.reviews.create(title: 'Interesting story',
                      description: "The book was of course, unbelievable but then again, it's fiction. It was enjoyable to read but I guess I was expecting a more practical explanation. The book was captivating and hard to put down. I just kept wondering what to expect next",
                      score: 4,
                      user_name: 'Karla')

amazonia.reviews.create(title: "Parts Were Interesting But it is Too Unrealistic For My Taste",
                      description: "I won't go back after any of his other books because this protagonist was simply not believable as far as his cartoon-hero behavior. Perhaps Rollins is writing for the CGI prone film industry--who knows. He is scientifically hip and tries to tie the plot to existing scientific data and theories; but for me he is grounded enough in reality. I think Robin Cook does a far better job of writing believable science based thrillers.",
                      score: 3,
                      user_name: 'Adriana')

connelly = Author.create(name: 'Michael Connelly')
late_show = connelly.books.create(title: 'The Late Show', pages: 448, year: 2017)
late_show.reviews.create(title: "For Late Nighters, Insomniacs and Early Risers, Connelly Never Fails",
                        description: "His attention to detail in investigations is authentic, superb and on the level of Ed McBain or Joseph Wambaugh. He cranks out quality writing, but bucks the current trend in churning out books, to readers dissatisfaction, by not partnering with co-writers like some bestselling authors do to meet the demands of their readers. Connelly does his own homework and we are the benefactor.",
                        score: 5,
                        user_name: 'Eddie')

late_show.reviews.create(title: 'Room to grow for this new series from Michael Connelly',
                        description: "Overall I found this book engaging but was not all that enchanted with Det. Ballard. She is a loose cannon and she shares Harry Bosch's iconoclastic anti-authority style. Bucking authority for a junior detective seems like a poor approach if she's interested in career longevity; Bosch's been around for decades and "earned" the right to challenge bureaucracy but Ballard has not. ",
                        score: 3,
                        user_name: 'Karen')


late_show.reviews.create(title: 'A welcome new addition to the Bosch Universe',
                        description: "When it comes to murder mysteries, Michael Connelly is my go-to author. If he writes it, I read it. So when I received notice that he was beginning a new series, starting with The Late Show, I pre-ordered the book months in advance and read it in a day once it arrived.",
                        score: 5,
                        user_name: 'George')

late_show.reviews.create(title: "I don't get the great reviews. And comparing her to Bosch",
                        description: "Well, if Connelly wrote this, it is storylines only. This is so filled with police 'lingo' it's unbelievable. Drove me crazy. Plus filler on top of that. The character Ballard really isn't that likable either. And please, a tent on the beach and a dog that is so obedient, but she never spends time with it?!? I don't get the great reviews. And comparing her to Bosch. What an insult. I've read about 95% of his novels, and this is not Connelly. If it really is, then he needs to quit. I just gave it a two star because all in all I love his books. NOT this one. Note to author: write more Mickey books if you want to retire Bosch.",
                        score: 2,
                        user_name: 'Donald')

late_show.reviews.create(title: "Hard to believe it's written by Michael Connelly",
                        description: "It is really difficult to believe Michael Connelly wrote this book. Though there are a few character and descriptor overlaps, it's very different from his usual writing (and not in a good way).",
                        score: 3,
                        user_name: 'Tina')

two_kinds = connelly.books.create(title: "Two Kinds of Truth", pages: 417, year: 2017)
two_kinds.reviews.create(title: 'Another fabulous Harry Bosch book',
                        description: 'Michael Connelly has done it yet again. Two Kinds of Truth is an outstanding addition to the fabulous Harry Bosch series. This mystery series is one of my very favorites',
                        score: 5,
                        user_name: 'Cindy')

two_kinds.reviews.create(title: 'Have read and enjoyed all the previous 19 books',
                        description: "Have read and enjoyed all the previous 19 books, but this seemed like a different author somehow ? The verbiage is almost documentary like in places, with very little action going on between the interweaving storylines. I'm sure many will not agree, but not up to par in my opinion. Sorry Mr Connelly",
                        score: 3,
                        user_name: 'Gordon')

two_kinds.reviews.create(title: 'Harry Bosch at his best!',
                        description: 'After reading The Late Show, I was most eager to get to my beloved Harry Bosch. Our affair, lopsided as it is, goes back twenty years. Occasionally, Harry has let me down (Nine Dragons) and sometimes I want to slap him, but mostly Harry is so perfectly Harry that I dive into his stories with the enthusiasm of new lovers looking longingly into each other’s eyes.',
                        score: 5,
                        user_name: 'Rose')

two_kinds.reviews.create(title: 'Another great entry in a great series.',
                        description: "Another great entry in a great series. I still find Harry a bit annoying at times, but that's just his character and it sure does heighten the tension. He's driven, focused and out for justice, but he is also overbearing, narrow-minded, and judgmental. But that doesn't mean he isn't a great character. The flaws that Connelly writes into the character make him one of he very few cop-shop detectives who leaps off the page and pops you in the eye. The plot follows the basic formula of late, a current crime, a cold case crime, and Harry at odds with his old work place, the LAPD. ",
                        score: 5,
                        user_name: 'Jim')

two_kinds.reviews.create(title: 'Harry Bosch returns for another entertaining tale',
                        description: "Harry Bosch has not lost his passion for 'speaking' for murder victims. Even though he is past his retirement age, he still does detective work as a volunteer from an obsolete jail cell in San Leandro. Usually he is working old unclosed cases, but in Two Kinds of Truth his age makes him a perfect undercover agent for infiltrating a Russian/American gang using Medicare recipients as tools to get vast quantities of opioid pills from unscrupulous doctors and small, neighborhood pharmacies. ",
                        score: 5,
                        user_name: 'David')

black_ice = connelly.books.create(title: 'The Black Ice', pages: 433, year: 2002)
black_ice.reviews.create(title: "It's all in the details....",
                        description: "I have chosen to delve fully into the Bosch series...all 23 and counting. It will take awhile but as I dig into this persona, I can't help but feel Connelly has given his character a solid, real ( well, as real as fiction can get), texture....warts and all. I am reading them sequentially to follow the timeline of Harry's perslnal/professional life.",
                        score: 5,
                        user_name: 'Jim')

black_ice.reviews.create(title: 'Bosch heads south across the border',
                        description: "The crime, if it is one, is puzzling. Did narcotics officer Calexico Moore commit suicide by shooting himself with a shotgun? The physical difficulty of even doing in one’s self like that is daunting. Harry Bosch gets this case along with another one, seemingly unrelated at first.",
                        score: 3,
                        user_name: 'Mike')

black_ice.reviews.create(title: 'Storytelling of the highest order.',
                        description: "Connelly expertly grabs the reader's attention in a few pages then begins an intriguing and compelling story that belongs in the first rank of the noir genre in the modern era. With all due respect to Raymond Chandler and Dashiell Hammett, Connelly weaves a tale that rivals their best work. The novel begins with a corpse and balances the storytelling with a corpse at the end. What happens inbetween is storytelling of the highest order.",
                        score: 5,
                        user_name: 'Sarah')

black_ice.reviews.create(title: 'Entertaining and Engaging',
                        description: "Connelly keeps us watching all the balls as they fly through the air. Bosch comes across as the iconoic tough loner with a heart of gold, committed to seeing justice done and truth uncovered, even, though, he doesn't necessarily want the law to interfere with his investigation or truth to be revealed if it means that a widow may lose her pension.",
                        score: 5,
                        user_name: 'Destiny')

black_ice.reviews.create(title: 'Druglords, Crime, and International Lawlessness Corrupts',
                        description: 'This is an interesting tale, told through Harry Bosch, who is once again the lone wolf who follows his instincts, not the rules.',
                        score: 3,
                        user_name: 'Karen')

black_ice.reviews.create(title: 'A protagonist with unwavering dedication to doing the right thing',
                        description: "A couple of things hold me back from five stars. Some parts seem to go on too long, particularly in the first half of the book. The second involves the test of time. Reading the novel in 2014, the notion of cops wearing pagers and scrambling to find pay phones seems pretty quaint. Ditto smoking inside buildings and tossing cigarette butts everywhere but in an ashtray or trashcan. But lots of books and novels sound a little dated twenty plus years after they came out.",
                        score: 4,
                        user_name: 'Karla')

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
what_ive_done.reviews.create(title: 'Well Delineated',
                        description: "Captivating from the beginning to end." ,
                        score: 5,
                        user_name: 'Will Burr')
what_ive_done.reviews.create(title: 'Provoking',
                        description: "Pick it up and you won't put it down." ,
                        score: 4,
                        user_name: 'Roger Feddel')
what_ive_done.reviews.create(title: 'Emotionally Charged',
                        description: "Not for the faint of heart, read with caution." ,
                        score: 2,
                        user_name: 'Christa Queen')
what_ive_done.reviews.create(title: 'Lackluster',
                        description: "Money can be spent on a better book." ,
                        score: 1,
                        user_name: 'Rachel Wilhelm')
what_ive_done.reviews.create(title: 'Must Read',
                        description: "Enjoyable enough to the point of obsession." ,
                        score: 5,
                        user_name: 'Linda Pez')
what_ive_done.reviews.create(title: 'Roller-Coaster-Fun',
                        description: "Makes the brain wild while taming the heart.." ,
                        score: 5,
                        user_name: 'Bill Doherty')
what_ive_done.reviews.create(title: 'Final Thoughts',
                        description: "If you are looking for a late night read to relax to, this is it." ,
                        score: 5,
                        user_name: 'Roxanne Chiles')
