# TODO: Implement all the specs defined in the README.md :)

class OrangeTree

    attr_reader :age, :fruits, :height, :dead

  def initialize
    @height = 0
    @age = 0
    @dead = false
    @fruits = 0
  end

  def one_year_passes!
    @age = @age + 1
    if @age <= 10
      @height = @height + 1
    end
    fruits_growth
    dead?
  end

  def fruits_growth
    @fruits = 0
    if (6..10).cover?(@age)
      @fruits = @fruits + 100
    end
    if (11..15).cover?(@age)
      @fruits = @fruits + 200
    end
  end

  def pick_a_fruit!
    @fruits = @fruits - 1
  end

  def dead?
    num = 100 - @age
    if @age > 50
      num_death = rand(0..num)
      if num_death == 0
        @dead = true
      end
    end
    @dead
  end
end







# You should be able to measure the tree
# Each year, the tree should age (it becomes older and taller, and eventually dies).

# Before 50 years old, the proabability of dying as a year pass is zero.
# After 50 years old, the probability of dying increases

# No tree can live more than 100 years

# A tree grows 1 meter per year until 10 years old. Then it stops.

# A tree will produce 100 fruits a year once it is 5 years old
# A tree will produce 200 fruits a year between 10 and 15 years old
# A tree will not produce any fruits after that

# You should be able to pick an fruit from the tree
# You should be able to count how many fruits on the tree there are left

# Every year, fruits which were not picked just fall off
