class Triangle

  attr_accessor :l1, :l2, :l3
  
  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    raise TriangleError unless sides_positive(l1, l2, l3) && inequality(l1, l2, l3)
    if l1 == l2 && l2 == l3 then :equilateral
    elsif l1 == l2 || l2 == l3 || l1 == l3 then :isosceles
    else :scalene
    end
  end

  def sides_positive(l1, l2, l3)
    l1 > 0 && l2 > 0 && l3 > 0 ? true : false
  end

  def inequality(l1, l2, l3)
    l1 + l2 >= l3 && l2 + l3 >= l1 && l1 + l3 >= l2 ? true : false
  end


  class TriangleError < StandardError
  end

end
