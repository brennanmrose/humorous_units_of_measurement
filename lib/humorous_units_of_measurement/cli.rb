class HumorousUnitsOfMeasurement::CLI

	def start 
		puts "Welcome to the Humorous Units of Measurment App"
		puts "Here are the types of measurments you can select from:"
		# HumorousUnitsOfMeasurement::Scraper.scrape_units_of_measurement  << do i want to call my scraper in measurements? 
		list_units
		menu


	end 

	# scrape all units - call to the scraper class
	# list of units
	# ask for input
	# list_terms and call another method

	def list_units
		HumorousUnitsOfMeasurement::Measurements.all.each.with_index(1) do |unit, index|
			puts '#{index}. #{unit.name}'
		end
	end

	def menu 
		puts "Enter the number of the unit you would like to learn about"
		input = nil #temporary
		while input != "exit"
			input = gets.strip.downcase
			case input 
			when "1"
				puts "list of terms found under this unit"
				# list_terms
			when "2"
				puts "list of terms found under this unit"
				# list_terms
			when "3"
				puts "list of terms found under this unit"
				# list_terms 
			end
		end
	end 

	def list_terms
		# HumorousUnitsOfMeasurement::Terms pull terms for each unit
	end

	def list_definition 
		# list_terms 
		# returns paragraph definitions for each term
	end 

end