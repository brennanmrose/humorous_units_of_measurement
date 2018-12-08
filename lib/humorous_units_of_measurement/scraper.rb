class HumorousUnitsOfMeasurement::Scraper 

	# def get_page 
	# end

	def self.scrape_units_of_measurement
		get_page = Nokogiri::HTML(open('https://en.wikipedia.org/wiki/List_of_humorous_units_of_measurement')) 
		attributes = get_page.css(".mw-parser-output")
		attributes.each do |attr|
			units = get_page.css("div.mw-parser-output h2").css("span.mw-headline")[0].text
			
		# array_of_units = 
		end	
	end 

	def self.scrape_terms 
		# terms = get_page.css("div.mw-parser-output h3").css("span.mw-headline")[0].text
	end 
end
