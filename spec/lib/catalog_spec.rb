require_relative '../../lib/catalog'

describe Catalog do
  it "sort the meals by ascending date" do
    monday_meal = stub(:eating_day => Date.new(2012, 04, 16))
    tuesday_meal = stub(:eating_day => Date.new(2012, 04, 17))
    catalog = Catalog.new([tuesday_meal, monday_meal])
    catalog.by_date.should == [monday_meal, tuesday_meal]
  end
end
