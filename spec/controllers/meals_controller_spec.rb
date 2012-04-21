require 'spec_helper'

describe MealsController do
  describe 'listing' do
    it 'renders the index template' do
      get :index
      response.should render_template('index')
    end

    it 'uses catalog to get meals' do
      meals, catalog = stub, stub
      Meal.stub!(:all).and_return(meals)
      Catalog.stub!(:new).with(meals).and_return(catalog)
      get :index
      assigns(:catalog).should == catalog
    end
  end
end
