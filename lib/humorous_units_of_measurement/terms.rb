# class HumorousUnitsOfMeasurement::Terms
# 	attr_accessor :category, :term, :definition

# 	@@all = []

# 	def initialize(attributes_hash)
# 		binding.pry
# 		attributes_hash.each do |key, value|
#       		self.send("#{key}=", value)
#       	end
#     	self.save 
#     end

#     def save 
#     	@@all << self
#         self
#     end 

#     def self.all
#     	@@all 
#     end 

# end 