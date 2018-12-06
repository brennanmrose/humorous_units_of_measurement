class HumorousUnitsOfMeasurement::CLI

	def start 
		puts "Welcome to the Humorous Units of Measurment App"
		puts "Here are the types of measurments you can select from:"
		HumorousUnitsOfMeasurement::Scraper.scrape_units_of_measurement
	end 

	# scrape all units - call to the scraper class
	# list of units
	# ask for input
	# list_terms and call another method

	def list_units
		HumorousUnitsOfMeasurement::Measurements.all.each.with_index(1) do |unit, index|
			puts '#{index}. #{unit.name}'
	end

	def list_terms
		# HumorousUnitsOfMeasurement::Terms pull terms for each unit
	end
end