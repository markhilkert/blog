User.create!(
            email: "mark@gmail.com",
            password: "password",
            password_confirmation: "password"
            )

Post.create!( 
            date: Date.parse("March 28, 2019"),
            preview_image: '/images/blog/blog-1.jpg',
            title: "Sleep&#8212It's frustratingly Important.",
            user_id: 1,
            body: "                 
                  <h6>Sleep & Memory Formation</h6>

                  <p>When I was an undergraduate engineering student, there was something that I never understood. I frequently found myself putting in late hours, in the computer labs until 2 or 3am finishing long assignments. Why weren’t any of the best students there pulling late nights with me? </p>

                  <p>To understand why, it’s important to understand what your brain is doing while you’re asleep. It’s common to think of our brains as inactive at night, resting for the next day. But your brain is actually very active while you’re asleep, performing a variety of vital maintenance functions to take care of your brain’s health. The list of what your brain is doing is too long to discuss here, so I’ll focus on one area: memory formation.</p>

                  <p>There are two types of sleep: rapid-eye-movement (REM) sleep, and non-rapid-eye-movement sleep (NREM). Each helps your brain transfer, maintain, and update your long-term memory. NREM “prunes” your memories & neural connections, removing what it doesn’t think is important, and transferring what it does think is important to long-term memory. REM helps us make new neural connections and creatively organize the memories NREM has passed to long-term memory. A common analogy used to understand the distinction is a sculptor, carving a statute from a cube of marble. The sculptor alternates between carving away big chunks of marble (NREM) and then adding fine detail on what's left (REM).</p> 

                  <p>When you sleep at night, your brain cycles back-and-forth between NREM and REM sleep. Generally, in the beginning of the night, your sleep is heavily weighted towards NREM. Then, with each cycle, we get more and more REM. This means that if you cut your sleep short by 25% (e.g., sleeping for 6 hours when you need 8) you can actually lose 60–90\% of your REM sleep for the night, when your brain is making new connections and processing the new information you’re learning.</p> 

                  <h6> The worst part: Alcohol & Sleep.  </h6>

                  <p> Alcohol is one of the worst suppressors of REM sleep. A study conducted on college students illustrates how. In the study, a group of students were taught a new, artificial grammar, similar to learning a new programming language. This is the sort of task REM sleep is known to promote. The students then took a test the same day they were taught the grammar, and the average for the entire group was 90%. The students were then separated into 3 groups: group (1) (the control group), group (2) (drink that night group), and group (3) (drink on night 3 group).</p>

                  <p> Group (1) slept normally. Group (2) got a little drunk the in the evening, the same day they learned the material. They had the equivalent of 2–3 shots of vodka (depending on their body weight) before bed. Group (3), slept normally nights 1 and 2, then on night 3 had the same amount of alcohol that group (2) had the first night. </p>

                  <p> Seven days after learning the grammar, all the students were re-tested on the grammar they all learned while sober the first day. Group (1) remembered everything they had learned (90%), and even showed a bit of improvement on abstraction and retention of knowledge related to the initial levels of learning. Group (2) forgot more than 50\% of what they learned. And, worst of all, Group (3) forgot 40\% of what they learned, despite getting two full nights rest after learning the material. We really don’t have good data about how long it takes for your memories to be safe.</p>

                  <h6> How to tell if you’re getting enough sleep </h6>

                  <p> It’s also difficult to tell if you’re getting enough sleep. Adults typically need between 7–9 hours per night, but where you fall in that range varies by individual. When researchers purposefully deprive study participants of sleep before having them perform cognitive tests, the sleep deprived individuals consistently rate their performance as optimal, even though their performance is objectively deteriorating. </p>

                  <p> So how do you know if you’re getting enough sleep? Ask yourself two questions: First, after waking up in the morning, could you fall back asleep at 10 or 11am? Second, can you function optimally before noon, without the aid of caffeine? </p>

                  <h6> Why the best students didn’t deprive themselves of sleep </h6>

                  <p> It would be too simplistic to say that sleep was the only difference between me and the best students. But I severely underrated the impact of late nights on my academic performance.  </p>

                  <p> First, even if you’ve had a full night’s sleep, your performance deteriorates the longer you’re awake (after about 16 hours—e.g.,12pm if you wake up at 8am). So when I was in the computer lab at 2am, I wasn’t performing well. I’d have been much better off getting some sleep before continuing my assignments. Doing so also would’ve spaced out my learning, which is shown to be more effective than binge learning in one sitting. </p>

                  <p> Second, even though I was getting work done, I wasn’t effectively converting what I learned to long-term memory. By getting to sleep at 3 or 4am, I was cutting my sleep short, and robbing myself of the REM sleep needed to grapple with and understand difficult material. While I was continually stopping my brain from performing the work needed to learn the material, the best students were putting the material refining their toolset when they slept night after night, for the entire quarter. </p>

                  <p> Third, by sleeping short, I started the next day in a sleep deficit, and wasn’t learning optimally in class. Short sleep is known to impact your short-term memory (kind of like running your computer without the RAM functioning properly). This prevents you from understanding the concepts in the moment. </p>

                  <p> Finally, most weekends, I stayed out late drinking with my friends, thinking it wouldn’t affect my learning that had taken place the prior week. But by impairing my REM sleep over the weekend, I was preventing myself from fully understanding the concepts from the previous week. This effect compounded, week after week, and I ended up learning less over the quarter. </p>",
            preview_text: "
                          When I was an undergraduate engineering student, there was something that I never understood. I frequently found myself putting in late hours, in the computer labs until 2 or 3am finishing long assignments. Why weren’t any of the best students there pulling late nights with me? To understand why
                          "
            )

Comment.create!(
                post_id: 1,
                commenter: "Also Mark",
                body: "Great job, Mark!"
                )

Tag.create!(name: "Sleep")
Tag.create!(name: "Lifestyle")
Tag.create!(name: "Productivity")

PostsTag.create!(
                post_id: 1,
                tag_id: 1
                )

PostsTag.create!(
                post_id: 1,
                tag_id: 2
                )

PostsTag.create!(
                post_id: 1,
                tag_id: 3
                )