class HumorousUnitsOfMeasurement::Measurements
	attr_accessor :name, :term, :definition

	@@all = []

	def initialize(attributes_hash)
		attributes_hash.each do |key, value|
      		self.send("#{key}=", value)
      	end
    	self.save 
    end

    def save 
    	@@all << self
        binding.pry
        self
    end 

    def self.all
    binding.pry 
    	@@all 
    end 

end 