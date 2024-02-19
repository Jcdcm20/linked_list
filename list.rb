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
  end 

  def append(value)
    @tail = value
    value.next = nil
  end

  def prepend(value)
    if  @head == nil
      @head = value
      @tail = value
    else
      value.next = @head
      @head = value
    end 
  end
end