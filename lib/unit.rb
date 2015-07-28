class Unit

  attr_reader :health_points, :attack_power

  def initialize(hp, ap)
    @health_points = hp
    @attack_power = ap
  end 

  def damage(enemy_attack_points)
    @health_points -= enemy_attack_points
  end 

  def attack!(enemy)
    enemy.damage(@attack_power)
  end 
end 