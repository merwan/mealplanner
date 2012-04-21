class Catalog
  def self.compile(meals)
    meals.sort do |a,b|
      a.eating_day <=> b.eating_day
    end
  end
end
