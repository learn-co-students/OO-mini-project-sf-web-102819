class Ingredient

    @@all = []

    def initialize()
        @@all << self
    end

    
    def self.most_common_allergen
        hello = Hash.new(0)
        Allergy.all.each do |ag|
            hello[ag.ingredient] += 1
        end
        max_key = nil
        max_value = 0
        hello.each do |key,value|
            if value > max_value
                max_value = value 
                max_key = key
            end
        end
        max_key
    end

    def self.all 
        @@all
    end

end
