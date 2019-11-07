class RecipeIngredient

    @@all = []

    def initialize(recipe,ingredient)
        @recipe = recipe
        @ingredient = ingredient
        @@all << self
    end



    def self.all 
        @@all
    end

end