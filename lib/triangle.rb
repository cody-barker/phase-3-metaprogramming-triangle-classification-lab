class Triangle

  attr_accessor :l1, :l2, :l3
  
  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    if l1 == l2 && l2 == l3 then :equilateral
    elsif l1 == l2 || l1 == l3 || l2 == l3 then :isosceles
    elsif l1 != l2 || l3 then :scalene
    elsif l1 <= 0 || l2 <= 0 || l3 <= 0 
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    elsif l1 + l2 < l3 ||  l2 + l3 < l1 || l1 + l3 < l2 then raise TriangleError
    end
  end

  class TriangleError < StandardError
    end
  end

end
