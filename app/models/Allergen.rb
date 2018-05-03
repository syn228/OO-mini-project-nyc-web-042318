class Allergen
  attr_accessor :user, :ingredient

ALL = []

  def initialize(user, ingredient)
    @user = user
    @ingredient = ingredient
    ALL << self
  end

  def self.all
    ALL
  end

end
