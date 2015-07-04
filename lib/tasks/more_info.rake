class MoreInfo
  
  require 'nokogiri'
  require 'open-uri'
  
  def self.run
    Graduate.all.each do |grad|
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
        
      else
        url = "http://ruby007.students.flatironschool.com/students/#{grad.first_name.downcase}_#{grad.last_name.downcase}.html"
        
      end
    end
  end
end