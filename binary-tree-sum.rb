class Branch
  def initialize(left, right)
    @left = left
    @right = right
  end

  def sum
    @left.sum + @right.sum
  end
end

class Leaf
  def initialize(value)
    @value = value
  end
  
  def sum
    @value
  end
end

l = Leaf.new(1)
b = Branch.new(
  Branch.new(l, Leaf.new(2)),
  Leaf.new(3))

p b.sum # 1 + 2 + 3 = 6
