require_relative 'spec_helper'

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end 

  it "has lumber as a resource, which starts at 500" do
    expect(@barracks.lumber).to eq(500)
  end 


end 