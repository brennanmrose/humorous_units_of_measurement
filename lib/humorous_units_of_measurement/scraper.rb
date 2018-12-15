class HumorousUnitsOfMeasurement::Scraper 

	def self.scrape_units_of_measurement
		get_page = Nokogiri::HTML(open('https://en.wikipedia.org/wiki/List_of_humorous_units_of_measurement')) 
		categories_array = Array.new
		measurements = get_page.css("div.mw-parser-output h2").css("span.mw-headline").children
		measurements[0..7].each do |a|
			category = a.text 
			categories_hash ={:category => category}
			categories_array << categories_hash
		end
		terms_array = Array.new 
		terms = get_page.css("div.mw-parser-output h3").css("span.mw-headline").children 
		terms[0..38].each do |b|  
			term = b.text
			terms_hash ={:term => term}
			terms_array << terms_hash
		end
		measurement_zero = HumorousUnitsOfMeasurement::Measurements.new(categories_array[0])
			measurement_zero.term = terms_array[0], terms_array[1], terms_array[2]
		measurement_one =  HumorousUnitsOfMeasurement::Measurements.new(categories_array[1])
			measurement_one.term = terms_array[3], terms_array[4]
		measurement_two =  HumorousUnitsOfMeasurement::Measurements.new(categories_array[2])
			measurement_two.term = terms_array[5], terms_array[6], terms_array[7], terms_array[8], terms_array[9], terms_array[10], terms_array[11], terms_array[12]
		measurement_three =  HumorousUnitsOfMeasurement::Measurements.new(categories_array[3])
			measurement_three.term = terms_array[13], terms_array[14]
		measurement_four =  HumorousUnitsOfMeasurement::Measurements.new(categories_array[4])
			measurement_four.term = terms_array[15], terms_array[16]
		measurement_five =  HumorousUnitsOfMeasurement::Measurements.new(categories_array[5])
			measurement_five.term = terms_array[17], terms_array[18]
		measurement_six =  HumorousUnitsOfMeasurement::Measurements.new(categories_array[6])
			measurement_six.term = terms_array[19], terms_array[20], terms_array[21], terms_array[22], terms_array[23], terms_array[24], terms_array[25], terms_array[26]
		measurement_seven =  HumorousUnitsOfMeasurement::Measurements.new(categories_array[7])
			measurement_seven.term = terms_array[26], terms_array[28], terms_array[29], terms_array[30], terms_array[31], terms_array[32], terms_array[33], terms_array[34], terms_array[35], terms_array[36], terms_array[37], terms_array[38]
	end
end