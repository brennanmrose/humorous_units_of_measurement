class HumorousUnitsOfMeasurement::Scraper 

	# def get_page 
	# end

	def self.scrape_units_of_measurement
		get_page = Nokogiri::HTML(open('https://en.wikipedia.org/wiki/List_of_humorous_units_of_measurement')) 
		attributes = Hash.new 
		measurements = get_page.css("div.mw-parser-output h2").css("span.mw-headline").children
		measurements[0..7].each do |a|
			measurement = a.text 
			attributes[:measurement] = measurement
		end
		terms = get_page.css("div.mw-parser-output h3").css("span.mw-headline").children 
		terms.each do |b|
			term = b.text 
			attributes[:term] = term
		end
		# array_of_measurements.each do |attr|
		# 	attributes = {
				# measurement: attr.name,
				# term: 
				# definition:
			# }
		# end 
		# measurement = HumorousUnitsOfMeasurement::Measurements.new(attributes)
	end 

	# def self.scrape_terms 
	# end 
end