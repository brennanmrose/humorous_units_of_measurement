class HumorousUnitsOfMeasurement::CLI

	def start 
		puts "Welcome to the Humorous Units of Measurment CLI"
		puts "Here are the types of measurments you can select from:"
		HumorousUnitsOfMeasurement::Scraper.scrape_units_of_measurement
		sort_measurements
		list_measurements
		select_measurement
	end 

	def sort_measurements
		@sorted_measurements = HumorousUnitsOfMeasurement::Measurements.all.sort_by{|measurement| measurement.category}
	end

	def list_measurements
		@sorted_measurements.each.with_index(1) do |measurement, index|
			puts "#{index}. #{measurement.category}" 
		end
	end

	def select_measurement 
		puts "Please enter the number (1 - 8) of the measurement you would like to learn more about."
		input = gets.strip
		index = input.to_i-1 
		if index.between?(0,8)
			measurement = @sorted_measurements[index]
			puts "You have selected #{measurement.category}"
			puts "Here is a list of humorous terms found under #{measurement.category}:"
			binding.pry
			# terms = @sorted_measurements[index].term.each.with_index(1) do |term, index|
			# 	terms.delete_if{|key, value| key == "definition" }
			# 		puts "#{index}. #{term}"
			# 	end
			# end
			# list_terms
		elsif input == "exit"
		else 
			puts "Sorry, that input cannot be found"
			# select_measurement
		end
	end 

	# def list_terms
	# 	binding.pry
	# 	@sorted_measurements[index]each.with_index(1) do |term, index|
	# 		puts "#{index}. #{term}"
	# 	end
	# 	# select_term
	# end

	def select_term
		puts "If you would like to see the definition of this term, please enter the term number now"
		input = gets.strip
		index = input.to_i-1
		if term_selection_valid? 
			puts "You have selected #{measurement.term}"
			list_definition
		elsif input == "exit"
		else 
			puts "Sorry, that input cannot be found"
			select_term 
		end 
	end

	def term_selection_valid?
		#will validate according to the number of terms nested under the measurement 
	end 


	def list_definition 
		# returns paragraph definition for the term
	end 

end