class Slime
  def initialize(carname)
    @name = carname
  end

  def dispName
    puts(@name)
  end
end

class Human
  def initialize(carname)
    @name = carname
  end

  def dispName
    puts(@name)
  end
end


slime1 = Slime.new("スラぼう")
slime1.dispName

human = Human.new("よしと")
human.dispName