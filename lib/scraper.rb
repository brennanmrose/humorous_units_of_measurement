class HumorousUnitsOfMeasurement::Scraper 

	def get_page 
		Nokogiri::HTML(open('https://en.wikipedia.org/wiki/List_of_humorous_units_of_measurement'))
	end

	def self.scrape_units_of_measurement
		# get_page 
		# array_of_units = 
	end 
end