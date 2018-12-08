class HumorousUnitsOfMeasurement::Measurements
	attr_accessor :name, :terms, :definitions

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