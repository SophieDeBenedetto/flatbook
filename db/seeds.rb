# REMOTE SEEDING
require 'net/http'

# url = URI.parse('http://localhost:3000/api/v1/graduates')
# req = Net::HTTP::Get.new(url.to_s)
# res = Net::HTTP.start(url.host, url.port) {|http|
#   http.request(req)
# }
# puts res.body


# uri = URI('http://localhost:3000/api/v1/graduates.json')

# Net::HTTP.start(uri.host, uri.port) do |http|
#   request = Net::HTTP::Get.new uri

#   response = http.request request # Net::HTTPResponse object
#   binding.pry
# end

require 'httparty'
grads = HTTParty.get("http://localhost:3000/api/v1/graduates")

grads["graduates"].each do |grad|
  grad["first_name"] = first_name
  grad["last_name"] = last_name
  grad["cohort"] = cohort
  grad["bio"] = bio
  grad["current_job"] = current_job
  grad["news"] = news
  grad["website"] = website
  grad["picture"] = picture
  Graduate.find_or_create_by(first_name: first_name, last_name: last_name,
    cohort: cohort, bio: bio, current_job: current_job, news: news, website: website, 
    picture: picture)
end










##############################################################################

# LOCAL SEEDING

# require 'nokogiri'
# require 'open-uri'

# grads = [
# "https://www.linkedin.com/pub/dan-visintainer/38/a20/93?trk=pub-pbmap", 
# "https://www.linkedin.com/in/alexanderlee2", 
# "https://www.linkedin.com/in/snaganuma",
# "https://www.linkedin.com/in/chloealee",
# "https://www.linkedin.com/in/nackman",
# "https://www.linkedin.com/in/alexgoldvarg",
# "https://www.linkedin.com/pub/rebecca-eakins/44/b98/bb9?trk=pub-pbmap", 
# "https://www.linkedin.com/pub/andrew-miksch/9b/734/817?trk=pub-pbmap",
# "https://www.linkedin.com/pub/kate-travers/1a/8/415?trk=pub-pbmap",
# "https://www.linkedin.com/pub/eric-w-fries/11/366/2b8?trk=pub-pbmap",
# "https://www.linkedin.com/pub/rebecca-shapiro/12/83a/581?trk=pub-pbmap",
# "https://www.linkedin.com/pub/laura-bintzer-hines/3/bb1/954?trk=pub-pbmap",
# "https://www.linkedin.com/pub/jeremy-sklarsky/4/51b/35?trk=pub-pbmap",
# "https://www.linkedin.com/pub/jennifer-sardina/62/955/434?trk=pub-pbmap",
# "https://www.linkedin.com/pub/skylar-panuska-lmsw/11/ba3/6a1?trk=pub-pbmap",
# "https://www.linkedin.com/pub/deniz-nida-unat/a3/227/b51?trk=pub-pbmap", 
# "https://www.linkedin.com/pub/sophie-debenedetto/aa/4a3/8b0?trk=pub-pbmap",
# ]


# client = LinkedIn::Client.new("77ve9he0al410l", "j9ReVDbr763bkTyO")
# binding.pry

# grads.each do |grad|

#   doc = Nokogiri::HTML(open(grad))
 
#   full_name = doc.css("span.full-name").text #need first and last separate
#   names = full_name.split(" ")
#   first_name = names.first
#   last_name = names.last
#   current_job = doc.css('p.title').text
  
#   if doc.css("div.profile-picture a img").first
#     picture = doc.css("div.profile-picture a img").first.attributes["src"].value
#   else
#     picture = Faker::Avatar.image("my-own-slug")
#   end
  
#   bio = doc.css("div.summary p.description").text.split(" ").join(" ")
  
#   if bio.empty?
#     bio = "I was born and raised on the bottom of the ocean, in the Mariana Trench. I love cooking, yoga and deep sea diving. I learned to program at the Flatiron School and since then I have put my new skills to use as an astronaut." 
#   end

#   if doc.css("div.profile-picture a img").first
#     pic = doc.css("div.profile-picture a img").first.attributes.values.first.value
#   end
  
#   if doc.css("div#background-projects div.editable-item").first
#     latest_project_name = doc.css("div#background-projects div.editable-item").first.css("span").first.text
#     latest_project_link = doc.css("div#background-projects div.editable-item").first.css("a").first.first.last
#     latest_project_description = doc.css("div#background-projects div.editable-item").first.css("p.description").text.split(" ").join(" ")
#   end
#   Graduate.create(first_name: first_name, last_name: last_name, bio: bio, cohort: "Ruby 007",
#     current_job: current_job, picture: picture, latest_project_name: latest_project_name,
#     latest_project_link: latest_project_link, latest_project_description: latest_project_description)
# end
