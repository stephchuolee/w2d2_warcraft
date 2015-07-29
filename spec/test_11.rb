require_relative 'spec_helper'

describe Barracks do
  
  before :each do
    @barracks = Barracks.new
  end 

  it "starts off with 500 HP" do
    expect(@barracks.health_points).to eq(500)
  end 
end 




describe Footman do 

  before :each do
    @footman = Footman.new
  end 

  it "only does half the attack points if it is attacking a building" do
    enemy = Barracks.new
    enemy.should_receive(:damage).with(5)
    @footman.attack!(enemy)
  end 

end
