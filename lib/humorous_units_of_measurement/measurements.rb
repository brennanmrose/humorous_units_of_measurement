class HumorousUnitsOfMeasurement::Measurements
	attr_accessor :measurement, :term, :definition

	@@all = []

	def initialize(attrributes)
		attributes.each do |key, value|
      		self.send("#{key}=", value)
      	end
    	self.save 
    end

    def save 
    	@@all << self
    end 

    def self.all 
    	@@all 
    end 

end 