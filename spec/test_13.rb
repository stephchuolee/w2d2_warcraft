require_relative 'spec_helper'

describe Unit do 

  before :each do 
    @unit = Unit.new(50,10)
  end 

  it "cannot attack another unit if it's dead" do

    enemy = Unit.new(50,10)
    @unit.should_receive(:dead?).and_return(true)
    @unit.attack!(enemy)
    expect(enemy.health_points).to eq(50)
  end 

  it "cannot attack a unit that is dead" do
    dead_enemy = Unit.new(0,5)
    @unit.attack!(dead_enemy)
    expect(dead_enemy.health_points).to eq(0)
  end

end 
