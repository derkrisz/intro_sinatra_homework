class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end


  def compare
    case
    when @hand1=="scissors" && @hand2=="rock"
      result = "#{@hand2} wins"
    when @hand1=="scissors" && @hand2=="paper"
      result = "#{@hand1} wins"
    when @hand1=="rock" && @hand2=="paper"
      result = "#{@hand2} wins"
    when @hand1=="rock" && @hand2=="scissors"
      result = "#{@hand1} wins"
    when @hand1=="paper" && @hand2=="scissors"
      result = "#{@hand2} wins"
    when @hand1=="paper" && @hand2=="rock"
      result = "#{@hand2} wins"
    end
  end

end
