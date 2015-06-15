# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'nokogiri'
require 'open-uri'

grads = ["https://www.linkedin.com/pub/dan-visintainer/38/a20/93?trk=pub-pbmap", 
"https://www.linkedin.com/in/alexanderlee2", 
"https://www.linkedin.com/in/snaganuma",]

doc = Nokogiri::HTML(open("https://www.linkedin.com/pub/dan-visintainer/38/a20/93?trk=pub-pbmap"))

binding.pry
full_name = doc.css("span.full-name").text #need first and last separate
current_job = doc.css('p.title').text
bio = doc.css("div.summary p.description").text #not everyone has
pic = doc.css("div.profile-picture a img").first.attributes.values.first.value
#not everyone has
latest_project_name = doc.css("div#background-projects div.editable-item").first.css("span").first.text
latest_project_link = doc.css("div#background-projects div.editable-item").first.css("a").first.first.last
latest_project_description = doc.css("div#background-projects div.editable-item").first.css("p.description").text

#website


#todo
#1. get all linked in urls
#2. get all webiste urls
#3. add appropriate columns to graduates table
