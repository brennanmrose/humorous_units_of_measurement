class HumorousUnitsOfMeasurement::Scraper 

	def self.scrape_units_of_measurement
			get_page = Nokogiri::HTML(open('https://en.wikipedia.org/wiki/List_of_humorous_units_of_measurement')) 
			categories_array = Array.new
			categories = get_page.css("div.mw-parser-output h2").css("span.mw-headline").children
			categories[0..7].each do |category|
				categories_hash ={:category => category.text}
				categories_array << categories_hash
			end
			terms_array = Array.new 
			terms = get_page.css("div.mw-parser-output h3").css("span.mw-headline").children 
			terms[0..38].each do |term|  
				terms_hash ={:term => term.text}
				terms_array << terms_hash
			end
			definitions_array = Array.new
			definitions = get_page.css("div.mw-parser-output h3 + p")
			definitions_hash ={:definition => []}
			definitions.each do |definition|
				definitions_hash ={:definition => definition.text}
				definitions_array << definitions_hash
			end
binding.pry
 		measurement_one =  HumorousUnitsOfMeasurement::Measurements.new(categories_array[0])
			measurement_one.term = terms_array[0], terms_array[1], terms_array[2]
				measurement_one.term[0][:definition]  
				measurement_one.term[1][:definition] = definitions_array[0]
				measurement_one.term[2][:definition] = definitions_array[1]
		measurement_two =  HumorousUnitsOfMeasurement::Measurements.new(categories_array[1])
			measurement_two.term = terms_array[3], terms_array[4]
				measurement_two.term[0][:definition] = definitions_array[2]
				measurement_two.term[1][:definition] 
		measurement_three =  HumorousUnitsOfMeasurement::Measurements.new(categories_array[2])
			measurement_three.term = terms_array[5], terms_array[6], terms_array[7], terms_array[8], terms_array[9], terms_array[10], terms_array[11], terms_array[12]
				measurement_three.term[0][:definition] = definitions_array[3]
				measurement_three.term[1][:definition] = definitions_array[4]
				measurement_three.term[2][:definition] = definitions_array[5]
				measurement_three.term[3][:definition] = definitions_array[6]
				measurement_three.term[4][:definition] = definitions_array[7]
				measurement_three.term[5][:definition] 
				measurement_three.term[6][:definition] = definitions_array[8]
				measurement_three.term[7][:definition] = definitions_array[9]
		measurement_four =  HumorousUnitsOfMeasurement::Measurements.new(categories_array[3])
			measurement_four.term = terms_array[13], terms_array[14]
				measurement_four.term[0][:definition] = definitions_array[10]
				measurement_four.term[1][:definition] = definitions_array[11]
		measurement_five =  HumorousUnitsOfMeasurement::Measurements.new(categories_array[4])
			measurement_five.term = terms_array[15], terms_array[16]
				measurement_five.term[0][:definition] = definitions_array[12]
				measurement_five.term[1][:definition] = definitions_array[13]
		measurement_six =  HumorousUnitsOfMeasurement::Measurements.new(categories_array[5])
			measurement_six.term = terms_array[17], terms_array[18]
				measurement_six.term[0][:definition] = definitions_array[14]
				measurement_six.term[1][:definition] = definitions_array[15]
		measurement_seven =  HumorousUnitsOfMeasurement::Measurements.new(categories_array[6])
			measurement_seven.term = terms_array[19], terms_array[20], terms_array[21], terms_array[22], terms_array[23], terms_array[24], terms_array[25], terms_array[26]
				measurement_seven.term[0][:definition] = definitions_array[16]
				measurement_seven.term[1][:definition] 
				measurement_seven.term[2][:definition] = definitions_array[17]
				measurement_seven.term[3][:definition] = definitions_array[18]
				measurement_seven.term[4][:definition] = definitions_array[19]
				measurement_seven.term[5][:definition] = definitions_array[20]
				measurement_seven.term[6][:definition] = definitions_array[21]
				measurement_seven.term[7][:definition] = definitions_array[22]
		measurement_eight =  HumorousUnitsOfMeasurement::Measurements.new(categories_array[7])
			measurement_eight.term = terms_array[27], terms_array[28], terms_array[29], terms_array[30], terms_array[31], terms_array[32], terms_array[33], terms_array[34], terms_array[35], terms_array[36], terms_array[37], terms_array[38]
				measurement_eight.term[0][:definition] = definitions_array[23]
				measurement_eight.term[1][:definition] = definitions_array[24]
				measurement_eight.term[2][:definition] 
				measurement_eight.term[3][:definition] = definitions_array[25]
				measurement_eight.term[4][:definition] = definitions_array[26]
				measurement_eight.term[5][:definition] = definitions_array[27]
				measurement_eight.term[6][:definition] = definitions_array[28]
				measurement_eight.term[7][:definition] = definitions_array[29]
				measurement_eight.term[8][:definition] = definitions_array[30]
				measurement_eight.term[9][:definition] = definitions_array[31]
				measurement_eight.term[10][:definition] = definitions_array[32]
				measurement_eight.term[11][:definition] = definitions_array[33]
		
	end
end

# class HumorousUnitsOfMeasurement::Scraper 


		# 	def self.scrape_units_of_measurement
		# attributes_array = Array.new
		# get_page = Nokogiri::HTML(open('https://en.wikipedia.org/wiki/List_of_humorous_units_of_measurement')) 
		# categories_array = get_page.css("div.mw-parser-output h2").css("span.mw-headline").children
		# categories_array[0..7].each do |category|
		# 	attributes ={
		# 		:category => category.text
		# 	}
		# 	attributes_array << attributes
		# 		terms_array = get_page.css("div.mw-parser-output h3").css("span.mw-headline").children 
		# 		terms_array[0..38].each do |term|
		# 			attributes ={
		# 			:term => term.text
		# 		}
		# 		attributes_array << attributes 
		# 			definitions_array = get_page.css("div.mw-parser-output h3 + p")
		# 			definitions_array.each do |definition|
		# 				attributes ={ 
		# 					:definition => definition.text
		# 				}
		# 				attributes_array << attributes
		# 			measurement = HumorousUnitsOfMeasurement::Measurements.new(attributes_array)
		# 		end

# 	end
# end

	
	# 	measurement_one = HumorousUnitsOfMeasurement::Measurements.new(attributes)
	# 		attributes = 
	# 		measurement_one.category = categories_array[0]
	# 		measurement_one.term = terms_array[0], terms_array[1], terms_array[2]
	# 		measurement_one.definition = definitions_array[0], definitions_array[1]