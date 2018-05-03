class RecipeCard
  attr_accessor :user, :recipe, :date, :rating

ALL = []

  def initialize(user, recipe, date, rating)
    @user = user
    @recipe = recipe
    @date = date
    @rating = rating
    ALL << self
  end

  def self.all
    ALL
  end

  # def date
  #   self.date
  # end
  #
  # def rating
  #   self.rating
  # end
  #
  # def user
  #   self.user
  # end
  #
  # def recipe
  #   self.recipe
  # end
  #not sure we need these because of accessors


end
