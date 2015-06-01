FactoryGirl.define do
  factory :graduate do
    first_name "Sally"
    last_name "Programmer"
    cohort "Ruby 77"
    current_job "Amazing Programming Job"
    bio "I was born and raised on the bottom of the ocean, in the Mariana Trench. I love cooking, yoga and deep sea diving. I learned to program at the Flatiron School and since then I have put my new skills to use as an astronaut."
    news "I recently moved into a new apartment on the moon!"
    website "www.awesomewebsite.com"
    picture Faker::Avatar.image("my-own-slug")
  end
end
