require 'open-uri'
require 'nokogiri'
require 'sports_events/version'

module SportsEvents
  Uri = "http://www.zhibo8.cc"
  class Output
    attr_accessor :datas
    def info
      datas.each do |line|
        puts line.text
      end
    end

    def xijia
      datas.each do |line|    	
        puts line.text if line.text.include?("西甲")
      end
    end
    		
    def yingchao
      datas.each do |line|    	
        puts line.text if line.text.include?("英超")
      end
    end
    
    def dejia
      datas.each do |line|    	
        puts line.text if line.text.include?("德甲")
      end
    end
  
    def fajia
      datas.each do |line|    	
        puts line.text if line.text.include?("法甲")
      end
    end
    
    def yijia
      datas.each do |line|    	
        puts line.text if line.text.include?("意甲")
      end
    end
  end
  class << self
    def query(date)
      doc = Nokogiri::HTML(open(Uri))
      today=Time.now.day
      date = date.to_i
      id = case date
           when today      then 2
           when today+1    then 3
           when today+2    then 4
           when today+3    then 5 
           when today+4    then 6 
           when today+5    then 7 
           when today+6    then 8 
           when today+7    then 9 
           when today+8    then 10 
           when today+9    then 11 
           when today+10   then 12 
           when today+11   then 13 
           when today+12   then 14 
           when today+13   then 15 
           when today+14   then 16 
           when today+15   then 17 
           else 0
           end
      output = SportsEvents::Output.new
      if id == 0
        message = "对不起，暂无赛事数据提供"
      else
        message = doc.xpath("//div[@class='box']")[id]
      end
      lines = message.css("li")
      output.send("datas=",lines)
      return output
    end
  end
end
