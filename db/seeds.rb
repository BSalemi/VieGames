# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'nokogiri'
 Game.destroy_all 
 System.destroy_all
 Company.destroy_all 



NINTENDO = Company.create(name: "Nintendo")
MICROSOFT = Company.create(name: "Microsoft")
SONY = Company.create(name: "Sony")
SWITCH = System.create(name: "Nintendo Switch", company: NINTENDO)
THREE_DS = System.create(name: "Nintendo 3DS", company: NINTENDO)
XBOX_ONE = System.create(name: "Xbox One", company: MICROSOFT)
PS4 = System.create(name: "Playstation 4", company: SONY)

NINTENDO_SWITCH = "https://www.gamestop.com/browse/games/nintendo-switch?nav=28-xu0,13ffff2418-1e8-6"

NINTENDO_3DS = "https://www.gamestop.com/browse/games/nintendo-3ds?nav=28-xu0,13ffff2418-1a2" 

XBOX_1 = "https://www.gamestop.com/browse/games/xbox-one?nav=28-xu0,13ffff2418-1e0" 

PLAYSTATION_4 = "https://www.gamestop.com/browse/games/playstation-4?nav=28-xu0,131dc-ffff2418"



def scrape_switch

    doc = open(NINTENDO_SWITCH)
    parsed_doc = Nokogiri::HTML(doc)
    grabbed_elements = parsed_doc.css("div.product_info")
    grabbed_elements.each do |element|
  
      title = element.css("h3 a").text
      esrb = element.css('.product_esrb').attribute('src').value
      x = esrb.rindex("_")
      rating = esrb.slice(x..-5).gsub("_","")
  
      case rating 
        when "e"
        rating = "Everyone"
        when "e10"
        rating = "Everyone 10 & Up" 
        when "t"
        rating = "Teen"
        when "m"
        rating = "Mature"
        else 
        rating = "Not Rated"
      end 
  
      game = Game.create(title: title, content_rating: rating, company: NINTENDO, system: SWITCH)
    end 
  end 
  
  def scrape_ds
    doc = open(NINTENDO_3DS)
    parsed_doc = Nokogiri::HTML(doc)
    grabbed_elements = parsed_doc.css("div.product_info")
    grabbed_elements.each do |element|
  
      title = element.css("h3 a").text
      esrb = element.css('.product_esrb').attribute('src').value
      x = esrb.rindex("_")
      rating = esrb.slice(x..-5).gsub("_","")
      
        case rating 
          when "e"
          rating = "Everyone"
          when "e10"
          rating = "Everyone 10 & Up" 
          when "t"
          rating = "Teen"
          when "m"
          rating = "Mature"
          else 
          rating = "Not Rated"
        end 
  
      Game.create(title: title, content_rating: rating, company: NINTENDO, system: THREE_DS)
  
    end 
  end 
  
  def scrape_xbox 
      doc = open(XBOX_1)
      parsed_doc = Nokogiri::HTML(doc)
      grabbed_elements = parsed_doc.css("div.product_info")
    grabbed_elements.each do |element|
  
      title = element.css("h3 a").text
      esrb = element.css('.product_esrb').attribute('src').value
      x = esrb.rindex("_")
      rating = esrb.slice(x..-5).gsub("_","")
      case rating 
        when "e"
        rating = "Everyone"
        when "e10"
        rating = "Everyone 10 & Up" 
        when "t"
        rating = "Teen"
        when "m"
        rating = "Mature"
        else 
        rating = "Not Rated"
      end 
  
      Game.create(title: title, content_rating: rating, company: MICROSOFT, system: XBOX_ONE)
  
    end 
  end 
  
  def scrape_playstation
     doc = open(PLAYSTATION_4)
     parsed_doc = Nokogiri::HTML(doc)
     grabbed_elements = parsed_doc.css("div.product_info")
     grabbed_elements.each do |element|
  
      title = element.css("h3 a").text
      esrb = element.css('.product_esrb').attribute('src').value
      x = esrb.rindex("_")
      rating = esrb.slice(x..-5).gsub("_","")
  
      case rating 
        when "e"
        rating = "Everyone"
       when "e10"
        rating = "Everyone 10 & Up" 
        when "t"
        rating = "Teen"
        when "m"
        rating = "Mature"
        else 
        rating = "Not Rated"
      end 
  
      Game.create(title: title, content_rating: rating, company: SONY, system: PS4)
  
    end 
  end 
  
  scrape_switch
  scrape_ds
  scrape_xbox
  scrape_playstation