class PlayerMoving
  Grid_POSITIONS = (1..100).to_a

  def initialize(position)
    @position = position
    @iterations = 0
    raise "Initial position must be between 1 and 100" unless Grid_POSITIONS.include? @position
  end

  def move(distanceInMeters)
    @position += distanceInMeters
  end

  def play
    if self.status_player == :play
    if rand(1..100) < 50 ; move(rand(1..10))
    else
      move(-rand(1..10))
    end
  end

end

def cheat
  @position = 101
end

def status_player
  if @position > 100
    :win
  elsif @position < 0
    :loose
  else
    :play
  end
end

def has_won
  status_player == :win ; end
end

player = PlayerMoving.new(50)
player.play
puts player.status_player == :play # true
player.cheat
puts player.has_won == true

begin
  PlayerMoving.new(110)
rescue RuntimeError => e
  puts e.to_s == "Initial position must be between 1 and 100" # true
end