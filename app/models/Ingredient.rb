class Ingredient
  attr_accessor :name
ALL = []
  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def self.most_common_allergen
    allergen_count = {}
    Allergen.all.map do |allergy|
      if !allergen_count[allergy.ingredient]
        allergen_count[allergy.ingredient] = 0
        allergen_count[allergy.ingredient] +=1
      else
        allergen_count[allergy.ingredient] +=1
      end
    end
    y = allergen_count.max_by{|key, value| value}
    y[0].name
  end

end
