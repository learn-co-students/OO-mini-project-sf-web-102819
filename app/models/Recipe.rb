class Recipe
    attr_accessor 
    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end

    def users
        RecipeCard.all.select do |recipecard|
            recipecard.recipe == self
        end
        #map to user
    end

    # def self.most_popular
    #     RecipeCard.all.

    #     #will return to - need to interate through each recpie and then through the users to add them
    # end

    def ingredients
        RecipeIngrediant.all.select do |recing|
            recing.recipe == self
        end
        #map to ing

    end

    def add_ingredients(ing)
        ing.each do |ingre|
            RecipeIngrediant.new(ingre, self)
        end
    end




end