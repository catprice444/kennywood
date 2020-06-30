class Kennywood::CLI

  def call
    puts "Welcome to Kennywood!"
    Kennywood::Scraper.scrape
    rollercoasters
  end


  def rollercoasters
      puts ""
        rides = Kennywood::Coasters.all

        rides.each.with_index(1) do |ride, i|
          puts "#{i}. #{ride.name}"
        end
        puts ""
        puts "Which Rollercoaster would you like to learn more about?"
        puts "Enter the corresponding number between 1-48."

      input = gets.strip
      indiv_ride = rides[input.to_i-1]
        puts ""
        puts "Name:                #{indiv_ride.name}"
        puts ""
        puts "Disclaimer:          #{indiv_ride.disclaimer}"
        puts ""
        puts "About:               #{indiv_ride.about[0]} #{indiv_ride.about[1]} #{indiv_ride.about[2]}"
        puts "Page Url:            #{indiv_ride.url}"
        puts ""
        puts "Description:"
        puts "#{indiv_ride.description}"
        puts ""

        done

      end


    def done
      puts ""
      puts "Are you finished looking at rollercoasters? Enter 'yes' or 'no'."
      input = gets.strip.downcase

        if input == "no"
          rollercoasters
        elsif input == "yes"
          puts ""
          puts "Enjoy your stay at Kennywood!!"
          exit
        else
          puts ""
          puts "Sorry I don't understand"
          rollercoasters
        end

    end
end
