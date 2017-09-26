class PaperBoy

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
    @quota = 50
  end

  def quota
    @quota = @quota + (@experience / 2)
  end

  def deliver(start_address, end_address)
    delivered = end_address - start_address + 1
    over_quota = delivered - @quota
    if delivered < 0
      p "The end address should be greater than the start address"
    else
      @experience += delivered
      @earnings += (delivered * 0.25)
      if over_quota > 0
        @earnings += (over_quota * 0.25)
      end
    end
  end

  def report
    p "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings} so far!"
  end
end


tommy = PaperBoy.new("Tommy")
p tommy.quota
tommy.deliver(101, 160)
tommy.report

p tommy.quota
tommy.deliver(1, 75)
tommy.report
