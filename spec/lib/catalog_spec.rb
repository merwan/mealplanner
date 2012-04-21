require_relative '../../lib/catalog'

describe Catalog do
  it "sort the meals by ascending date" do
    monday = Date.new(2012, 04, 16)
    tuesday = Date.new(2012, 04, 17)
    monday_meal = stub(:eating_day => monday)
    tuesday_meal = stub(:eating_day => tuesday)
    meals = Catalog.compile([tuesday_meal, monday_meal])
    meals[0].should == monday_meal
    meals[1].should == tuesday_meal
  end
end
