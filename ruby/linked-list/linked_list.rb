class Deque
  attr_reader :first, :last

  def initialize
    @first = Node.new
    @last = @first
  end

  def push(value)
    N
  end

  def pop

  end
end

class Node
  attr_accessor :prev, :next

  def initialize(prev: nil, next: nil)
    @prev = prev
    @next = next
  end
end
