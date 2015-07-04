class MoreInfo
  
  require 'nokogiri'
  require 'open-uri'
  
  def self.run
    Graduate.all.each do |grad|
      url = ""
      if grad.first_name == "Alexander"
        url = "http://ruby007.students.flatironschool.com/students/alex_#{grad.last_name.downcase}.html"
        
      elsif grad.first_name == "Sophie"
        url = "http://ruby007.students.flatironschool.com/students/#{grad.first_name}_#{grad.last_name}.html"
        
      elsif grad.first_name == "Cyrus"
        url = "http://ruby007.students.flatironschool.com/students/#{grad.first_name.downcase}.html"
       
      elsif grad.first_name == "Seiji"
        url = "http://ruby007.students.flatironschool.com/students/#{grad.first_name}-#{grad.last_name}.html"
       
      elsif grad.first_name == "Rachel"
        url = "http://ruby007.students.flatironschool.com/students/#{grad.first_name.downcase}-#{grad.last_name.downcase}.html"
        
      elsif grad.first_name == "Bethanne"
        url = "http://ruby007.students.flatironschool.com/students/bethanie_zink.html"
        
      elsif grad.first_name == "Skylar"
        grad.last_name = "Panuska"
        url = "http://ruby007.students.flatironschool.com/students/#{grad.first_name.downcase}_#{grad.last_name.downcase}.html" 
      elsif grad.first_name == "Jason"
        url = "http://ruby007.students.flatironschool.com/students/jay_#{grad.last_name.downcase}.html"
      else
        url = "http://ruby007.students.flatironschool.com/students/#{grad.first_name.downcase}_#{grad.last_name.downcase}.html"
        
      end
      doc = Nokogiri::HTML(open(url))
        grad.twitter = doc.css("div.social-icons a").first.attributes.values.first.value
        grad.github = doc.css("div.social-icons a").last.attributes.values.first.value
        grad.save
    end
  end
end