class Node
  attr_accessor :next, :value

  def initialize
    @next = nil
    @value = nil
  end
end

class LinkedList

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end 

  def append(value)
    if @head.nil?
      @head = value
      @tail = value
    else
      @tail.next = value
      @tail = value
    end
  end

  def prepend(value)
    if  @head.nil?
      @head = value
      @tail = value
    else
      value.next = @head
      @head = value
    end 
    @nodes += 1
  end

  def size
    @nodes
  end

  def head
    @head
  end

  def tail
    @tail
  end
end

