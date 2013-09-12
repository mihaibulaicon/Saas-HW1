class Dessert
    def initialize(name, calories)
        @name = name
	@calories = calories
    end
    attr_accessor :name, :calories       
    def healthy?
         self.calories < 200
    end
    def delicious?
       return true
    end
end

class JellyBean < Dessert
    def initialize(name, calories, flavor)
        super(name,calories)
	@flavor = flavor
    end
    
    attr_accessor :flavor
    def delicious?
        flavor != "black licorice"
    end
end

dessert= Dessert.new("Dessert1", 150)
dessert2 = JellyBean.new("desert2",130,"black licorice")
dessert3= JellyBean.new("dessert3","240","aroma")
if dessert2.delicious?
	puts "delicios"
else puts "otrava"
end
