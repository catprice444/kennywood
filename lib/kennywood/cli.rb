class Kennywood::CLI

  def call
    puts "Welcome to Kennywood!"
    Kennywood::Scraper.scrape
    rollercoasters
  end


  def rollercoasters
      puts ""
      puts "Which Rollercoaster would you like to learn more about? Enter a number between 1-48."

        rides = Kennywood::Coasters.all

        rides.each.with_index(1) do |ride, i|
          puts "#{i}. #{ride.name}"
        end

      input = gets.strip
      indiv_ride = rides[input.to_i-1]
        puts ""
        puts "Name:           #{indiv_ride.name}"
        puts ""
        # puts "About:     #{indiv_ride.about}"
        puts "Minimum Height:      #{indiv_ride.about[0]}"
        puts "Thrill Level:        #{indiv_ride.about[1]}"
        puts ""
        puts "Description:"
        puts "#{indiv_ride.description}"


        done

      end


      #   puts ""
      #   puts "Do you want to learn more? Enter 'yes' or 'no'."
      #   input_two = gets.strip.downcase
      #
      #     if input_two == "no"
      #       done
      #     elsif input_two == "yes"
      #       more(input)
      #     else
      #       puts ""
      #       puts "Sorry I don't understand"
      #       rollercoasters
      #     end
      # end

      # def more(input)
      #
      #   information = Kennywood::Coasters.id(input)
      #   puts "About:        #{information.about}."
      #
      # end

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
