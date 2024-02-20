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

  def contains?(value)
    current = @head
    @size.times do
      if current.value == value
        return true
      else
        current = current.next
      end
    end
    false
  end

  def find(value)
    index = 0
    current = @head
    @size.times do 
      if current.value == value
        return index
      else
        current = current.next
        index += 1
      end
    end
    nil
  end

  def to_s
    string = ''
    current = @head
    @size.times do
      string << "( #{current.value} )  -> "
      current = current.next
    end
    string
  end

  def insert_at(value, index)
    last = self.at(index - 1)
    nxt = last.next
    last.next = value
    value.next = nxt
    @size += 1
  end
end

