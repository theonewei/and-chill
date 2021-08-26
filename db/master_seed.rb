require 'open-uri'

List.delete_all
Video.delete_all
Genre.delete_all
Profile.delete_all
User.delete_all

User.connection.execute('ALTER SEQUENCE users_id_seq RESTART WITH 1')
Video.connection.execute('ALTER SEQUENCE videos_id_seq RESTART WITH 1')
Genre.connection.execute('ALTER SEQUENCE genres_id_seq RESTART WITH 1')
List.connection.execute('ALTER SEQUENCE lists_id_seq RESTART WITH 1')

User.create!({email: 'isaacshoe01@gmail.com',password: 'password'})
User.create!({email: 'jo',password: 'password'})
User.create!({email: 'demo_user@demo.com', password: 'demouser'})

Profile.create!({user_id: 1, name: 'jo yang'})
Profile.create!({user_id: 2, name: 'i wei'})
Profile.create!({user_id: 2, name: 'real jo'})

Genre.create!({name: 'Family-Friendly'})
Genre.create!({name: 'Drama'})
Genre.create!({name: 'Comedy'})
Genre.create!({name: 'Romance'})
Genre.create!({name: 'Thriller'})
Genre.create!({name: 'Foreign'})
Genre.create!({name: 'Action'})



v=Video.create!({name: 'the Lion King',format: 'movie',genre_id: 1, info: "This Disney animated feature follows the adventures of the young lion Simba (Jonathan Taylor Thomas), the heir of his father, Mufasa (James Earl Jones). Simba's wicked uncle, Scar (Jeremy Irons), plots to usurp Mufasa's throne by luring father and son into a stampede of wildebeests. But Simba escapes, and only Mufasa is killed. Simba returns as an adult (Matthew Broderick) to take back his homeland from Scar with the help of his friends Timon (Nathan Lane) and Pumbaa (Ernie Sabella)."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/lionking.jpg"),filename: "lionking.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/lionking.mp4"),filename: "lionking.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/The.Lion.King.1994.BluRay.720p.x264.YIFY.mp4"),filename: 'The.Lion.King.1994.BluRay.720p.x264.YIFY.mp4')

v=Video.create!({name: 'the Lion King',format: 'movie',genre_id: 6, info: "This Disney animated feature follows the adventures of the young lion Simba (Jonathan Taylor Thomas), the heir of his father, Mufasa (James Earl Jones). Simba's wicked uncle, Scar (Jeremy Irons), plots to usurp Mufasa's throne by luring father and son into a stampede of wildebeests. But Simba escapes, and only Mufasa is killed. Simba returns as an adult (Matthew Broderick) to take back his homeland from Scar with the help of his friends Timon (Nathan Lane) and Pumbaa (Ernie Sabella)."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/lionking.jpg"),filename: "lionking.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/lionking.mp4"),filename: "lionking.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/The.Lion.King.1994.BluRay.720p.x264.YIFY.mp4"),filename: 'The.Lion.King.1994.BluRay.720p.x264.YIFY.mp4')

v=Video.create!({name: 'Beauty and the Beast',format: 'movie',genre_id: 1, info: "An arrogant young prince (Robby Benson) and his castle's servants fall under the spell of a wicked enchantress, who turns him into the hideous Beast until he learns to love and be loved in return. The spirited, headstrong village girl Belle (Paige O'Hara) enters the Beast's castle after he imprisons her father Maurice (Rex Everhart). With the help of his enchanted servants, including the matronly Mrs. Potts (Angela Lansbury), Belle begins to draw the cold-hearted Beast out of his isolation."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/beautyandthebeast.jpg"),filename: "beautyandthebeast.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/beautyandthebeast.mp4"),filename: "beautyandthebeast.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Beauty+and+the+Beast+1991.EXTENDED.720p.BrRip.x264.YIFY.mp4"),filename: 'Beauty and the Beast 1991.EXTENDED.720p.BrRip.x264.YIFY.mp4')

v=Video.create!({name: 'Beauty and the Beast',format: 'movie',genre_id: 7, info: "An arrogant young prince (Robby Benson) and his castle's servants fall under the spell of a wicked enchantress, who turns him into the hideous Beast until he learns to love and be loved in return. The spirited, headstrong village girl Belle (Paige O'Hara) enters the Beast's castle after he imprisons her father Maurice (Rex Everhart). With the help of his enchanted servants, including the matronly Mrs. Potts (Angela Lansbury), Belle begins to draw the cold-hearted Beast out of his isolation."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/beautyandthebeast.jpg"),filename: "beautyandthebeast.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/beautyandthebeast.mp4"),filename: "beautyandthebeast.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Beauty+and+the+Beast+1991.EXTENDED.720p.BrRip.x264.YIFY.mp4"),filename: 'Beauty and the Beast 1991.EXTENDED.720p.BrRip.x264.YIFY.mp4')

v=Video.create!({name: 'Beauty and the Beast',format: 'movie',genre_id: 4, info: "An arrogant young prince (Robby Benson) and his castle's servants fall under the spell of a wicked enchantress, who turns him into the hideous Beast until he learns to love and be loved in return. The spirited, headstrong village girl Belle (Paige O'Hara) enters the Beast's castle after he imprisons her father Maurice (Rex Everhart). With the help of his enchanted servants, including the matronly Mrs. Potts (Angela Lansbury), Belle begins to draw the cold-hearted Beast out of his isolation."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/beautyandthebeast.jpg"),filename: "beautyandthebeast.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/beautyandthebeast.mp4"),filename: "beautyandthebeast.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Beauty+and+the+Beast+1991.EXTENDED.720p.BrRip.x264.YIFY.mp4"),filename: 'Beauty and the Beast 1991.EXTENDED.720p.BrRip.x264.YIFY.mp4')

v=Video.create!({name: 'Aladdin',format: 'movie',genre_id: 1, info: "Aladdin is a lovable street urchin who meets Princess Jasmine, the beautiful daughter of the sultan of Agrabah. While visiting her exotic palace, Aladdin stumbles upon a magic oil lamp that unleashes a powerful, wisecracking, larger-than-life genie. As Aladdin and the genie start to become friends, they must soon embark on a dangerous mission to stop the evil sorcerer, Jafar, from overthrowing young Jasmine's kingdom."})
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/aladdin.mp4"),filename: "aladdin.mp4")
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/aladdin.jpg"),filename: "aladdin.jpg")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Aladdin.1992.720p.BRrip.x264.GAZ.YIFY.mp4"),filename: 'Aladdin.1992.720p.BRrip.x264.GAZ.YIFY.mp4')

v=Video.create!({name: 'Aladdin',format: 'movie',genre_id: 3, info: "Aladdin is a lovable street urchin who meets Princess Jasmine, the beautiful daughter of the sultan of Agrabah. While visiting her exotic palace, Aladdin stumbles upon a magic oil lamp that unleashes a powerful, wisecracking, larger-than-life genie. As Aladdin and the genie start to become friends, they must soon embark on a dangerous mission to stop the evil sorcerer, Jafar, from overthrowing young Jasmine's kingdom."})
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/aladdin.mp4"),filename: "aladdin.mp4")
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/aladdin.jpg"),filename: "aladdin.jpg")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Aladdin.1992.720p.BRrip.x264.GAZ.YIFY.mp4"),filename: 'Aladdin.1992.720p.BRrip.x264.GAZ.YIFY.mp4')

v=Video.create!({name: 'Cars',format: 'movie',genre_id: 1, info: "While traveling to California to race against The King (Richard Petty) and Chick Hicks (Michael Keaton) for the Piston Cup Championship, Lightning McQueen (Owen Wilson) becomes lost after falling out of his trailer in a run down town called Radiator Springs. While there he slowly befriends the town's odd residents, including Sally (Bonnie Hunt), Doc Hudson (Paul Newman) and Mater (Larry the Cable Guy). When it comes time for him to leave to championship is no longer his top priority."})
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/cars.mp4"),filename: "cars.mp4")
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/cars.jpg"),filename: "cars.jpg")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Cars.2006.720p.BrRip.x264.YIFY.mp4"),filename: 'Cars.2006.720p.BrRip.x264.YIFY.mp4')

v=Video.create!({name: 'Cars',format: 'movie',genre_id: 5, info: "While traveling to California to race against The King (Richard Petty) and Chick Hicks (Michael Keaton) for the Piston Cup Championship, Lightning McQueen (Owen Wilson) becomes lost after falling out of his trailer in a run down town called Radiator Springs. While there he slowly befriends the town's odd residents, including Sally (Bonnie Hunt), Doc Hudson (Paul Newman) and Mater (Larry the Cable Guy). When it comes time for him to leave to championship is no longer his top priority."})
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/cars.mp4"),filename: "cars.mp4")
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/cars.jpg"),filename: "cars.jpg")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Cars.2006.720p.BrRip.x264.YIFY.mp4"),filename: 'Cars.2006.720p.BrRip.x264.YIFY.mp4')

v=Video.create!({name: 'Cars',format: 'movie',genre_id: 7, info: "While traveling to California to race against The King (Richard Petty) and Chick Hicks (Michael Keaton) for the Piston Cup Championship, Lightning McQueen (Owen Wilson) becomes lost after falling out of his trailer in a run down town called Radiator Springs. While there he slowly befriends the town's odd residents, including Sally (Bonnie Hunt), Doc Hudson (Paul Newman) and Mater (Larry the Cable Guy). When it comes time for him to leave to championship is no longer his top priority."})
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/cars.mp4"),filename: "cars.mp4")
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/cars.jpg"),filename: "cars.jpg")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Cars.2006.720p.BrRip.x264.YIFY.mp4"),filename: 'Cars.2006.720p.BrRip.x264.YIFY.mp4')

v=Video.create!({name: 'Cloudy with a Chance of Meatballs',format: 'movie',genre_id: 1, info: "When hard times hit Swallow Falls, its townspeople can only afford to eat sardines. Flint Lockwood, a failed inventor, thinks he has the answer to the town's crisis. He builds a machine that converts water into food, and becomes a local hero when tasty treats fall from the sky like rain. But when the machine spins out of control and threatens to bury the whole world under giant mounds of food, Flint finds he may have bitten off more than he can chew."})
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/cloudywithachanceofmeatballs.mp4"),filename: "cloudywithachanceofmeatballs.mp4")
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/cloudywithachanceofmeatballs.jpg"),filename: "cloudywithachanceofmeatballs.jpg")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Cloudy.with.a.Chance.of.Meatballs.720p.BluRay.x264.YIFY.mp4"),filename: 'Cloudy.with.a.Chance.of.Meatballs.720p.BluRay.x264.YIFY.mp4')

v=Video.create!({name: 'Cloudy with a Chance of Meatballs',format: 'movie',genre_id: 3, info: "When hard times hit Swallow Falls, its townspeople can only afford to eat sardines. Flint Lockwood, a failed inventor, thinks he has the answer to the town's crisis. He builds a machine that converts water into food, and becomes a local hero when tasty treats fall from the sky like rain. But when the machine spins out of control and threatens to bury the whole world under giant mounds of food, Flint finds he may have bitten off more than he can chew."})
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/cloudywithachanceofmeatballs.mp4"),filename: "cloudywithachanceofmeatballs.mp4")
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/cloudywithachanceofmeatballs.jpg"),filename: "cloudywithachanceofmeatballs.jpg")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Cloudy.with.a.Chance.of.Meatballs.720p.BluRay.x264.YIFY.mp4"),filename: 'Cloudy.with.a.Chance.of.Meatballs.720p.BluRay.x264.YIFY.mp4')

v=Video.create!({name: 'Burnt',format: 'movie',genre_id: 2, info: "Adam Jones (Bradley Cooper) was once a top chef in Paris until drugs and alcohol led to a meltdown that put his career on hold. After moving from New Orleans to London, Adam gets a shot at redemption when his former maitre d' (Daniel Brühl) reluctantly hires him as the head chef of his fine-dining restaurant. Demanding perfection from his newly formed staff (Sienna Miller, Omar Sy), the acerbic and temperamental Jones gets a second chance to fulfill his dream of earning a third Michelin star."})
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/burnt.mp4"),filename: "burnt.mp4")
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/burnt.jpg"),filename: "burnt.jpg")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Burnt.2015.720p.BluRay.x264.%5BYTS.AG%5D.mp4"),filename: 'Burnt.2015.720p.BluRay.x264.[YTS.AG].mp4')

v=Video.create!({name: 'Burnt',format: 'movie',genre_id: 4, info: "Adam Jones (Bradley Cooper) was once a top chef in Paris until drugs and alcohol led to a meltdown that put his career on hold. After moving from New Orleans to London, Adam gets a shot at redemption when his former maitre d' (Daniel Brühl) reluctantly hires him as the head chef of his fine-dining restaurant. Demanding perfection from his newly formed staff (Sienna Miller, Omar Sy), the acerbic and temperamental Jones gets a second chance to fulfill his dream of earning a third Michelin star."})
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/burnt.mp4"),filename: "burnt.mp4")
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/burnt.jpg"),filename: "burnt.jpg")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Burnt.2015.720p.BluRay.x264.%5BYTS.AG%5D.mp4"),filename: 'Burnt.2015.720p.BluRay.x264.[YTS.AG].mp4')

v=Video.create!({name: 'Burnt',format: 'movie',genre_id: 7, info: "Adam Jones (Bradley Cooper) was once a top chef in Paris until drugs and alcohol led to a meltdown that put his career on hold. After moving from New Orleans to London, Adam gets a shot at redemption when his former maitre d' (Daniel Brühl) reluctantly hires him as the head chef of his fine-dining restaurant. Demanding perfection from his newly formed staff (Sienna Miller, Omar Sy), the acerbic and temperamental Jones gets a second chance to fulfill his dream of earning a third Michelin star."})
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/burnt.mp4"),filename: "burnt.mp4")
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/burnt.jpg"),filename: "burnt.jpg")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Burnt.2015.720p.BluRay.x264.%5BYTS.AG%5D.mp4"),filename: 'Burnt.2015.720p.BluRay.x264.[YTS.AG].mp4')

v=Video.create!({name: 'Modern Times',format: 'movie',genre_id: 3, info: "This comedic masterpiece finds the iconic Little Tramp (Charlie Chaplin) employed at a state-of-the-art factory where the inescapable machinery completely overwhelms him, and where various mishaps keep getting him sent to prison. In between his various jail stints, he meets and befriends an orphan girl (Paulette Goddard). Both together and apart, they try to contend with the difficulties of modern life, with the Tramp working as a waiter and eventually a performer."})
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/charliechaplin.mp4"),filename: "charliechaplin.mp4")
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/charliechaplin.jpg"),filename: "charliechaplin.jpg")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Charlie.Chaplin.Modern.Times.1936.720p.BrRip.x264.YIFY.mp4"),filename: 'Charlie.Chaplin.Modern.Times.1936.720p.BrRip.x264.YIFY.mp4')

v=Video.create!({name: 'Modern Times',format: 'movie',genre_id: 5, info: "This comedic masterpiece finds the iconic Little Tramp (Charlie Chaplin) employed at a state-of-the-art factory where the inescapable machinery completely overwhelms him, and where various mishaps keep getting him sent to prison. In between his various jail stints, he meets and befriends an orphan girl (Paulette Goddard). Both together and apart, they try to contend with the difficulties of modern life, with the Tramp working as a waiter and eventually a performer."})
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/charliechaplin.mp4"),filename: "charliechaplin.mp4")
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/charliechaplin.jpg"),filename: "charliechaplin.jpg")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Charlie.Chaplin.Modern.Times.1936.720p.BrRip.x264.YIFY.mp4"),filename: 'Charlie.Chaplin.Modern.Times.1936.720p.BrRip.x264.YIFY.mp4')

v=Video.create!({name: 'Dear John',format: 'movie',genre_id: 4, info: "When soldier John Tyree (Channing Tatum) meets an idealistic college student, Savannah Curtis (Amanda Seyfried), it's the beginning of a strong romance. Over the next seven tumultuous years and separated by John's increasingly dangerous deployment, the lovers stay in touch through their letters, meeting in person only rarely. However, their correspondence triggers consequences that neither could foresee."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/dearjohn.jpg"),filename: "dearjohn.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/dearjohn.mp4"),filename: "dearjohn.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Dear.John.2010.720p.BluRay.x264.YIFY.mp4"),filename: 'Dear.John.2010.720p.BluRay.x264.YIFY.mp4')

v=Video.create!({name: 'Dear John',format: 'movie',genre_id: 2, info: "When soldier John Tyree (Channing Tatum) meets an idealistic college student, Savannah Curtis (Amanda Seyfried), it's the beginning of a strong romance. Over the next seven tumultuous years and separated by John's increasingly dangerous deployment, the lovers stay in touch through their letters, meeting in person only rarely. However, their correspondence triggers consequences that neither could foresee."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/dearjohn.jpg"),filename: "dearjohn.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/dearjohn.mp4"),filename: "dearjohn.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Dear.John.2010.720p.BluRay.x264.YIFY.mp4"),filename: 'Dear.John.2010.720p.BluRay.x264.YIFY.mp4')

v=Video.create!({name: 'Kung Fu Hustle',format: 'movie',genre_id: 6, info: "When the hapless Sing (Stephen Chow) and his dim-witted pal, Bone (Feng Xiaogang), try to scam the residents of Pig Sty Alley into thinking they're members of the dreaded Axe Gang, the real gangsters descend on this Shanghai slum to restore their fearsome reputation. What gang leader Brother Sum (Danny Chan) doesn't know is that three legendary retired kung fu masters (Yu Xing, Dong Zhihua, Chiu Chi-ling) live anonymously in this decrepit neighborhood and don't take kindly to interlopers."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/kungfuhustle.jpg"),filename: "kungfuhustle.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/kungfuhustle.mp4"),filename: "kungfuhustle.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Kung+Fu+Hustle+2004.720p.BrRip.x264.YIFY.mp4"),filename: 'Kung Fu Hustle 2004.720p.BrRip.x264.YIFY.mp4')

v=Video.create!({name: 'Kung Fu Hustle',format: 'movie',genre_id: 3, info: "When the hapless Sing (Stephen Chow) and his dim-witted pal, Bone (Feng Xiaogang), try to scam the residents of Pig Sty Alley into thinking they're members of the dreaded Axe Gang, the real gangsters descend on this Shanghai slum to restore their fearsome reputation. What gang leader Brother Sum (Danny Chan) doesn't know is that three legendary retired kung fu masters (Yu Xing, Dong Zhihua, Chiu Chi-ling) live anonymously in this decrepit neighborhood and don't take kindly to interlopers."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/kungfuhustle.jpg"),filename: "kungfuhustle.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/kungfuhustle.mp4"),filename: "kungfuhustle.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Kung+Fu+Hustle+2004.720p.BrRip.x264.YIFY.mp4"),filename: 'Kung Fu Hustle 2004.720p.BrRip.x264.YIFY.mp4')

v=Video.create!({name: 'Kung Fu Hustle',format: 'movie',genre_id: 7, info: "When the hapless Sing (Stephen Chow) and his dim-witted pal, Bone (Feng Xiaogang), try to scam the residents of Pig Sty Alley into thinking they're members of the dreaded Axe Gang, the real gangsters descend on this Shanghai slum to restore their fearsome reputation. What gang leader Brother Sum (Danny Chan) doesn't know is that three legendary retired kung fu masters (Yu Xing, Dong Zhihua, Chiu Chi-ling) live anonymously in this decrepit neighborhood and don't take kindly to interlopers."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/kungfuhustle.jpg"),filename: "kungfuhustle.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/kungfuhustle.mp4"),filename: "kungfuhustle.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Kung+Fu+Hustle+2004.720p.BrRip.x264.YIFY.mp4"),filename: 'Kung Fu Hustle 2004.720p.BrRip.x264.YIFY.mp4')

v=Video.create!({name: 'Spider-Man: Homecoming',format: 'movie',genre_id: 7, info: "Thrilled by his experience with the Avengers, young Peter Parker returns home to live with his Aunt May. Under the watchful eye of mentor Tony Stark, Parker starts to embrace his newfound identity as Spider-Man. He also tries to return to his normal daily routine -- distracted by thoughts of proving himself to be more than just a friendly neighborhood superhero. Peter must soon put his powers to the test when the evil Vulture emerges to threaten everything that he holds dear."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/spiderman.png"),filename: "spiderman.png")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/spiderman.mp4"),filename: "spiderman.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Spider-Man.Homecoming.2017.720p.BluRay.x264-%5BYTS.AG%5D.mp4"),filename: 'Spider-Man.Homecoming.2017.720p.BluRay.x264-[YTS.AG].mp4')

v=Video.create!({name: 'Spider-Man: Homecoming',format: 'movie',genre_id: 1, info: "Thrilled by his experience with the Avengers, young Peter Parker returns home to live with his Aunt May. Under the watchful eye of mentor Tony Stark, Parker starts to embrace his newfound identity as Spider-Man. He also tries to return to his normal daily routine -- distracted by thoughts of proving himself to be more than just a friendly neighborhood superhero. Peter must soon put his powers to the test when the evil Vulture emerges to threaten everything that he holds dear."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/spiderman.png"),filename: "spiderman.png")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/spiderman.mp4"),filename: "spiderman.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Spider-Man.Homecoming.2017.720p.BluRay.x264-%5BYTS.AG%5D.mp4"),filename: 'Spider-Man.Homecoming.2017.720p.BluRay.x264-[YTS.AG].mp4')

v=Video.create!({name: 'Spider-Man: Homecoming',format: 'movie',genre_id: 3, info: "Thrilled by his experience with the Avengers, young Peter Parker returns home to live with his Aunt May. Under the watchful eye of mentor Tony Stark, Parker starts to embrace his newfound identity as Spider-Man. He also tries to return to his normal daily routine -- distracted by thoughts of proving himself to be more than just a friendly neighborhood superhero. Peter must soon put his powers to the test when the evil Vulture emerges to threaten everything that he holds dear."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/spiderman.png"),filename: "spiderman.png")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/spiderman.mp4"),filename: "spiderman.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Spider-Man.Homecoming.2017.720p.BluRay.x264-%5BYTS.AG%5D.mp4"),filename: 'Spider-Man.Homecoming.2017.720p.BluRay.x264-[YTS.AG].mp4')

v=Video.create!({name: 'Splice',format: 'movie',genre_id: 5, info: "Geneticists Clive (Adrien Brody) and Elsa (Sarah Polley) specialize in creating hybrids of species. When they propose the use of human DNA, their pharmaceutical company bosses forbid it, forcing them to conduct experiments in secret. The result is Dren, a creature with amazing intelligence and physical attributes. At first, Dren exceeds their wildest dreams, but as she begins to grow at an accelerated rate, she threatens to become their worst nightmare."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/splice.jpg"),filename: "splice.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/splice.mp4"),filename: "splice.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Splice.2009.1080p.BrRip.x264.YIFY.mp4"),filename: 'Splice.2009.1080p.BrRip.x264.YIFY.mp4')

v=Video.create!({name: 'Splice',format: 'movie',genre_id: 2, info: "Geneticists Clive (Adrien Brody) and Elsa (Sarah Polley) specialize in creating hybrids of species. When they propose the use of human DNA, their pharmaceutical company bosses forbid it, forcing them to conduct experiments in secret. The result is Dren, a creature with amazing intelligence and physical attributes. At first, Dren exceeds their wildest dreams, but as she begins to grow at an accelerated rate, she threatens to become their worst nightmare."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/splice.jpg"),filename: "splice.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/splice.mp4"),filename: "splice.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Splice.2009.1080p.BrRip.x264.YIFY.mp4"),filename: 'Splice.2009.1080p.BrRip.x264.YIFY.mp4')

v=Video.create!({name: 'Splice',format: 'movie',genre_id: 6, info: "Geneticists Clive (Adrien Brody) and Elsa (Sarah Polley) specialize in creating hybrids of species. When they propose the use of human DNA, their pharmaceutical company bosses forbid it, forcing them to conduct experiments in secret. The result is Dren, a creature with amazing intelligence and physical attributes. At first, Dren exceeds their wildest dreams, but as she begins to grow at an accelerated rate, she threatens to become their worst nightmare."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/splice.jpg"),filename: "splice.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/splice.mp4"),filename: "splice.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Splice.2009.1080p.BrRip.x264.YIFY.mp4"),filename: 'Splice.2009.1080p.BrRip.x264.YIFY.mp4')

v=Video.create!({name: 'Splice',format: 'movie',genre_id: 7, info: "Geneticists Clive (Adrien Brody) and Elsa (Sarah Polley) specialize in creating hybrids of species. When they propose the use of human DNA, their pharmaceutical company bosses forbid it, forcing them to conduct experiments in secret. The result is Dren, a creature with amazing intelligence and physical attributes. At first, Dren exceeds their wildest dreams, but as she begins to grow at an accelerated rate, she threatens to become their worst nightmare."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/splice.jpg"),filename: "splice.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/splice.mp4"),filename: "splice.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Splice.2009.1080p.BrRip.x264.YIFY.mp4"),filename: 'Splice.2009.1080p.BrRip.x264.YIFY.mp4')

v=Video.create!({name: 'Titanic',format: 'movie',genre_id: 4, info: "James Cameron's 'Titanic' is an epic, action-packed romance set against the ill-fated maiden voyage of the R.M.S. Titanic; the pride and joy of the White Star Line and, at the time, the largest moving object ever built. She was the most luxurious liner of her era -- the 'ship of dreams' -- which ultimately carried over 1,500 people to their death in the ice cold waters of the North Atlantic in the early hours of April 15, 1912."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/titanic.jpg"),filename: "titanic.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/titanic.mp4"),filename: "titanic.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Titanic.1997.720p.HDTV.x264-YIFY.mp4"),filename: 'Titanic.1997.720p.HDTV.x264-YIFY.mp4')

v=Video.create!({name: 'Titanic',format: 'movie',genre_id: 2, info: "James Cameron's 'Titanic' is an epic, action-packed romance set against the ill-fated maiden voyage of the R.M.S. Titanic; the pride and joy of the White Star Line and, at the time, the largest moving object ever built. She was the most luxurious liner of her era -- the 'ship of dreams' -- which ultimately carried over 1,500 people to their death in the ice cold waters of the North Atlantic in the early hours of April 15, 1912."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/titanic.jpg"),filename: "titanic.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/titanic.mp4"),filename: "titanic.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Titanic.1997.720p.HDTV.x264-YIFY.mp4"),filename: 'Titanic.1997.720p.HDTV.x264-YIFY.mp4')

v=Video.create!({name: 'Titanic',format: 'movie',genre_id: 5, info: "James Cameron's 'Titanic' is an epic, action-packed romance set against the ill-fated maiden voyage of the R.M.S. Titanic; the pride and joy of the White Star Line and, at the time, the largest moving object ever built. She was the most luxurious liner of her era -- the 'ship of dreams' -- which ultimately carried over 1,500 people to their death in the ice cold waters of the North Atlantic in the early hours of April 15, 1912."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/titanic.jpg"),filename: "titanic.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/titanic.mp4"),filename: "titanic.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Titanic.1997.720p.HDTV.x264-YIFY.mp4"),filename: 'Titanic.1997.720p.HDTV.x264-YIFY.mp4')

v=Video.create!({name: 'Titanic',format: 'movie',genre_id: 6, info: "James Cameron's 'Titanic' is an epic, action-packed romance set against the ill-fated maiden voyage of the R.M.S. Titanic; the pride and joy of the White Star Line and, at the time, the largest moving object ever built. She was the most luxurious liner of her era -- the 'ship of dreams' -- which ultimately carried over 1,500 people to their death in the ice cold waters of the North Atlantic in the early hours of April 15, 1912."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/titanic.jpg"),filename: "titanic.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/titanic.mp4"),filename: "titanic.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Titanic.1997.720p.HDTV.x264-YIFY.mp4"),filename: 'Titanic.1997.720p.HDTV.x264-YIFY.mp4')

v=Video.create!({name: 'Why Him?',format: 'movie',genre_id: 3, info: "During the holidays, loving but overprotective Ned (Bryan Cranston) travels to California to visit his daughter Stephanie (Zoey Deutch) at Stanford University. While there, he meets his biggest nightmare: her well-meaning but socially awkward boyfriend, Laird (James Franco). Even though Laird is a multimillionaire, Ned disapproves of his freewheeling attitude and unfiltered language. His panic level escalates even further when he learns that Laird plans to ask for Stephanie's hand in marriage."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/whyhim.jpg"),filename: "whyhim.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/whyhim.mp4"),filename: "whyhim.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Why.Him.2016.720p.BluRay.x264-%5BYTS.AG%5D.mp4"),filename: 'Why.Him.2016.720p.BluRay.x264-[YTS.AG].mp4')

v=Video.create!({name: 'Why Him?',format: 'movie',genre_id: 4, info: "During the holidays, loving but overprotective Ned (Bryan Cranston) travels to California to visit his daughter Stephanie (Zoey Deutch) at Stanford University. While there, he meets his biggest nightmare: her well-meaning but socially awkward boyfriend, Laird (James Franco). Even though Laird is a multimillionaire, Ned disapproves of his freewheeling attitude and unfiltered language. His panic level escalates even further when he learns that Laird plans to ask for Stephanie's hand in marriage."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/whyhim.jpg"),filename: "whyhim.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/whyhim.mp4"),filename: "whyhim.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Why.Him.2016.720p.BluRay.x264-%5BYTS.AG%5D.mp4"),filename: 'Why.Him.2016.720p.BluRay.x264-[YTS.AG].mp4')

v=Video.create!({name: 'Why Him?',format: 'movie',genre_id: 5, info: "During the holidays, loving but overprotective Ned (Bryan Cranston) travels to California to visit his daughter Stephanie (Zoey Deutch) at Stanford University. While there, he meets his biggest nightmare: her well-meaning but socially awkward boyfriend, Laird (James Franco). Even though Laird is a multimillionaire, Ned disapproves of his freewheeling attitude and unfiltered language. His panic level escalates even further when he learns that Laird plans to ask for Stephanie's hand in marriage."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/whyhim.jpg"),filename: "whyhim.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/whyhim.mp4"),filename: "whyhim.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Why.Him.2016.720p.BluRay.x264-%5BYTS.AG%5D.mp4"),filename: 'Why.Him.2016.720p.BluRay.x264-[YTS.AG].mp4')

v=Video.create!({name: 'The Longest Ride',format: 'movie',genre_id: 4, info: "Former bull-riding champion Luke (Scott Eastwood) and college student Sophia (Britt Robertson) are in love, but conflicting paths and ideals threaten to tear them apart: Luke hopes to make a comeback on the rodeo circuit, and Sophia is about to embark on her dream job in New York's art world. As the couple ponder their romantic future, they find inspiration in Ira (Alan Alda), an elderly man whose decades-long romance with his beloved wife withstood the test of time."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/thelongestride.jpg"),filename: "thelongestride.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/thelongestride.mp4"),filename: "thelongestride.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/The.Longest.Ride.2015.720p.BluRay.x264.YIFY.mp4"),filename: 'The.Longest.Ride.2015.720p.BluRay.x264.YIFY.mp4')

v=Video.create!({name: 'The Longest Ride',format: 'movie',genre_id: 2, info: "Former bull-riding champion Luke (Scott Eastwood) and college student Sophia (Britt Robertson) are in love, but conflicting paths and ideals threaten to tear them apart: Luke hopes to make a comeback on the rodeo circuit, and Sophia is about to embark on her dream job in New York's art world. As the couple ponder their romantic future, they find inspiration in Ira (Alan Alda), an elderly man whose decades-long romance with his beloved wife withstood the test of time."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/thelongestride.jpg"),filename: "thelongestride.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/thelongestride.mp4"),filename: "thelongestride.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/The.Longest.Ride.2015.720p.BluRay.x264.YIFY.mp4"),filename: 'The.Longest.Ride.2015.720p.BluRay.x264.YIFY.mp4')

v=Video.create!({name: 'The Longest Ride',format: 'movie',genre_id: 6, info: "Former bull-riding champion Luke (Scott Eastwood) and college student Sophia (Britt Robertson) are in love, but conflicting paths and ideals threaten to tear them apart: Luke hopes to make a comeback on the rodeo circuit, and Sophia is about to embark on her dream job in New York's art world. As the couple ponder their romantic future, they find inspiration in Ira (Alan Alda), an elderly man whose decades-long romance with his beloved wife withstood the test of time."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/thelongestride.jpg"),filename: "thelongestride.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/thelongestride.mp4"),filename: "thelongestride.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/The.Longest.Ride.2015.720p.BluRay.x264.YIFY.mp4"),filename: 'The.Longest.Ride.2015.720p.BluRay.x264.YIFY.mp4')

v=Video.create!({name: 'Ip Man',format: 'movie',genre_id: 6, info: "Ip Man is a 2008 Hong Kong biographical martial arts film based on the life of Ip Man, a grandmaster of the martial art Wing Chun and teacher of Bruce Lee. The film focuses on events in Ip's life that supposedly took place in the city of Foshan during the Sino-Japanese War."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/ipman.jpg"),filename: "ipman.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/ipman.mp4"),filename: "ipman.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Ip+Man+2008.720p.BrRip.x264.YIFY.mp4"),filename: 'Ip Man 2008.720p.BrRip.x264.YIFY.mp4')

v=Video.create!({name: 'Ip Man',format: 'movie',genre_id: 2, info: "Ip Man is a 2008 Hong Kong biographical martial arts film based on the life of Ip Man, a grandmaster of the martial art Wing Chun and teacher of Bruce Lee. The film focuses on events in Ip's life that supposedly took place in the city of Foshan during the Sino-Japanese War."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/ipman.jpg"),filename: "ipman.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/ipman.mp4"),filename: "ipman.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Ip+Man+2008.720p.BrRip.x264.YIFY.mp4"),filename: 'Ip Man 2008.720p.BrRip.x264.YIFY.mp4')

v=Video.create!({name: 'Ip Man',format: 'movie',genre_id: 5, info: "Ip Man is a 2008 Hong Kong biographical martial arts film based on the life of Ip Man, a grandmaster of the martial art Wing Chun and teacher of Bruce Lee. The film focuses on events in Ip's life that supposedly took place in the city of Foshan during the Sino-Japanese War."})
v.thumbnail.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/ipman.jpg"),filename: "ipman.jpg")
v.clip.attach(io: open("https://and-chill-seed.s3.amazonaws.com/and-chill-seeds/ipman.mp4"),filename: "ipman.mp4")
v.video.attach(io: open("https://and-chill-seed.s3.amazonaws.com/Ip+Man+2008.720p.BrRip.x264.YIFY.mp4"),filename: 'Ip Man 2008.720p.BrRip.x264.YIFY.mp4')






















List.create!({name: 'My List', profile_id: 2, video_id: 1})
