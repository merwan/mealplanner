class Catalog
  def initialize(meals)
    @meals = meals
  end

  def by_date
    @meals.sort do |a,b|
      a.eating_day <=> b.eating_day
    end
  end
end
