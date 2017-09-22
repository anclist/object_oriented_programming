class Player

  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold_coins += 1
    if @gold_coins%10 == 0
      level_up
    end
  end

  def do_battle(damage)
      @health_points -= damage
    if @health_points <= 0
      @health_points = 10
      @lives -= 1
      if @lives <= 0
        restart
      end
    end
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def stats
    "#{@gold_coins} coins, #{@health_points} Health, #{@lives} lives."
  end

end

tony = Player.new

puts tony.stats

tony.collect_treasure
puts tony.stats

tony.collect_treasure
tony.collect_treasure
tony.collect_treasure
tony.collect_treasure
tony.collect_treasure
tony.collect_treasure
tony.collect_treasure
tony.collect_treasure
tony.collect_treasure
tony.collect_treasure
tony.collect_treasure
tony.collect_treasure
tony.collect_treasure
puts tony.stats

tony.collect_treasure
tony.collect_treasure
tony.collect_treasure
tony.collect_treasure
tony.collect_treasure
tony.collect_treasure
tony.collect_treasure
tony.collect_treasure
puts tony.stats


tony.do_battle(3)
puts tony.stats

tony.do_battle(8)
puts tony.stats

tony.do_battle(12)
puts tony.stats

tony.do_battle(12)
puts tony.stats

tony.do_battle(12)
puts tony.stats

tony.do_battle(12)
puts tony.stats

tony.do_battle(12)
puts tony.stats

tony.do_battle(12)
puts tony.stats

tony.do_battle(8)
puts tony.stats

tony.do_battle(8)
puts tony.stats
