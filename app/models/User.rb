class User
    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end

    def recipes
        rc = RecipeCard.all.select { |rc| rc.user == self }
        rc.map { |r| r.recipe }
    end

    def add_recipe_card(recipe, date, rating)
        #comeback
        RecipeCard.new()
    end

    def declare_allergy(ingredient)
        Allergy.new(ingredient, self)
    end

    def allergens
        Allergy.all.select { |ag| ag.user == self }
    end

    def top_three_recipes
        recipes.max(3) do |a, b|
            a.rating <=> b.rating
        end
    end
end