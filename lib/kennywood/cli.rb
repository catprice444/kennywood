class Kennywood::CLI
  
  def call
    puts "Welcome to Kennywood!"
    Kennywood::Scraper.scrape
    rollercoasters
    # CpCoasters::Coasters.done
  end
#

  def rollercoasters
      puts ""
      puts "Which Rollercoaster would you like to learn more about? Enter a number between 1-48."

        rides = Kennywood::Coasters.all
        # #
        # if rides.key?("name")
        #   puts "#{value}"
        # end
        # rides.each.with_index(1) do |ride, i|
        #   puts "#{i}. #{ride.name}"
        # end

      input = gets.strip
      indiv_ride = rides[input.to_i-1]
        puts ""
        puts "Name:           #{indiv_ride.name}"
      #   # puts "About:          #{indiv_ride.about}"
      #   # puts "Disclaimer:     #{indiv_ride.disclaimer}"
      #   # puts "Url:            #{indiv_ride.url}"
      #   puts ""
      #   puts "Description:"
      #   puts "#{indiv_ride.description}"
      #
        exit
      end
  #
  #     # def self.done
  #     #   puts ""
  #     #   puts "Are you finished looking at rollercoasters? Enter 'yes' or 'no'."
  #     #   input = gets.strip.downcase
  #     # #
  #     #     if input == "no"
  #     #       rollercoasters
  #     #     elsif input == "yes"
  #     #       puts ""
  #     #       puts "Enjoy your stay at Cedar Park!!"
  #     #       exit
  #     #     else
  #     #       puts ""
  #     #       puts "Sorry I don't understand"
  #     #       rollercoasters
  #     #     end
  #     #   end

end
