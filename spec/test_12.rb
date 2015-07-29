require_relative 'spec_helper'

describe Unit do 

  before :each do
    @unit = Unit.new(50,10)
  end 

  it "dies if HP hits 0 or lower" do 
    @unit.should_receive(:health_points).and_return(0)
    expect(@unit.dead?).to be_truthy
  end 

  it "returns false if HP >0" do
    expect(@unit.dead?).to be_falsey
  end 
end 