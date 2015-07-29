require_relative 'spec_helper'

describe SiegeEngine do 

  before :each do
    @siegeengine = SiegeEngine.new 
  end   

  it "can't #attack units" do
    enemy_unit = Unit.new(10, 5)
    @siegeengine.attack!(enemy_unit)
    expect(enemy_unit.health_points).to eq(10)
  end 

end 

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end 

  it "does not train a Siege Engine if there aren't enough resources (200 gold, 3 food, 60 lumber)" do 
    @barracks.should_receive(:can_train_siege_engine?).and_return(false)
      expect(@barracks.train_siege_engine).to be_nil

  end 

  describe "#train_siege_engine" do 
  
    it "costs 200 gold" do
      @barracks.train_siege_engine
      expect(@barracks.gold).to eq(800) # starts at 1000
    end

    it "costs 3 food" do
      @barracks.train_siege_engine
      expect(@barracks.food).to eq(77) # starts at 80
    end

    it "costs 60 lumber" do
      @barracks.train_siege_engine
      expect(@barracks.lumber).to eq(440) # starts at 500
    end

  end 

end 

