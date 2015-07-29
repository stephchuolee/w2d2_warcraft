
class Barracks

  attr_accessor :gold, :food, :health_points, :lumber

  def initialize
    @health_points = 500
    @gold = 1000
    @food = 80
    @lumber = 500
  end 


  def can_train_footman?
    #same as saying gold method, which accessess @gold
    if gold >= 135 && food >= 2
      true
    else 
      false 
    end
  end


  def train_footman
    if can_train_footman? 
    @gold -= 135
    @food -= 2
    footman = Footman.new
    end 
  end 

  def train_peasant
    if can_train_peasant? 
      @gold -= 90
      @food -= 5
      peasant = Peasant.new
    end
  end 

  def can_train_peasant?
    gold >= 90 && food >= 5 
  end 

  def train_siege_engine
    if can_train_siege_engine?
      @gold -= 200
      @food -= 3
      @lumber -= 60
    end 
  end 

  def can_train_siege_engine?
    gold >= 200 && food >= 3 && lumber >= 60
  end 

end
