class HumorousUnitsOfMeasurement::Scraper 

	def self.scrape_units_of_measurement
		get_page = Nokogiri::HTML(open('https://en.wikipedia.org/wiki/List_of_humorous_units_of_measurement')) 
		attributes = Hash.new 
		measurements = get_page.css("div.mw-parser-output h2").css("span.mw-headline").children
		measurements[0..7].each do |a|
			measurement = a.text 
			attributes[:name] = measurement
		end
		terms = get_page.css("div.mw-parser-output h3").css("span.mw-headline").children 
		terms[0..38].each do |b|  
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
		measurement = HumorousUnitsOfMeasurement::Measurements.new(attributes)
	end 

	# def self.scrape_terms 
	# end 
end


# 39 terms
# 1	Systems
# 1.1	FFF units
# 1.2	Great Underground Empire (Zork)
# 1.3	Potrzebie
# 2	Quantity
# 2.1	Nibble
# 2.2	Sagan
# 3	Length
# 3.1	Attoparsec
# 3.2	Beard-second
# 3.3	Mickey
# 3.4	Jimmy Griffin Snow Index
# 3.5	Altuve
# 3.6	Smoot
# 3.7	Sheppey
# 3.8	Wiffle
# 4	Area
# 4.1	Barn, outhouse, shed
# 4.2	Nanoacre
# 5	Volume
# 5.1	Barn-megaparsec
# 5.2	Hubble-barn
# 6	Power
# 6.1	Donkey power
# 6.2	Pirate-ninja
# 7	Time
# 7.1	Friedman
# 7.2	Jiffy
# 7.3	Microcentury
# 7.4	Mooch
# 7.5	Nanocentury
# 7.6	Tatum
# 7.7	Shake
# 7.8	New York Second
# 8	Non-conventional
# 8.1	Earthquake intensity: Rictus scale
# 8.2	Information flow: Dirac
# 8.3	Beauty: Helen
# 8.4	Bogosity: Lenat
# 8.5	Coolness: MegaFonzie
# 8.6	Obstruction: Pouter
# 8.7	Quality: Lovelace
# 8.8	Fame: Warhol
# 8.9	Fame: Shortz
# 8.10	Quackery: Canard
# 8.11	Twitter followers: Wheaton
# 8.12	Nausea: Garn