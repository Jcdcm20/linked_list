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
    @size += 1
  end

  def prepend(value)
    if  @head.nil?
      @head = value
      @tail = value
    else
      value.next = @head
      @head = value
    end 
    @size += 1
  end

  def size
    @size
  end

  def head
    @head
  end

  def tail
    @tail
  end

  def at(index)
    return 'index bigger than list size' if index > @size
    current = @head
    index.times do 
      current = current.next
    end
    current.nil? ? nil : current
  end

  def pop
    @size -= 1
    @tail = self.at(@size - 1)
    @tail.next = nil
  end
end

