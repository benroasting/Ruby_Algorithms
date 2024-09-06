class DoublyLinkedList
  attr_accessor :head, :tail, :length

  def initialize(value)
    new_node = Node.new(value)
    @head = new_node
    @tail = new_node
    @length = 1
  end

  def append
    new_node = Node.new(value)
    if @head
      new_node.prev = @tail
      @tail.next = new_node
    else 
      @head = new_node
    end

    @tail = new_node
    @length += 1
    true
  end

  def pop 
    return nil if @length.zero?

    temp = @tail
    @tail = temp.prev
    @tail.next = nil
    temp.prev = nil
    @length -= 1

    return temp unless @length.zero?

    @head = nil
    @tail = nil
    
    temp
  end

  def shift
    return nil if @length.zero?
  
    temp = @head
    @head = temp.next
    @head.prev = nil
    temp.next = nil
    @length -= 1
  
    return temp unless @length.zero?
  
    @head = nil
    @tail = nil
  
    temp
  end

  def get(index)
    return if index >= @length || index.negative?

    if index < @length / 2
      temp = @head
      (0...index).each do |_i|
        temp = temp.next
      end
    else 
      temp = @tail
      (index...@length - 1).each do |_i|
        temp = temp.prev
      end  
    end
    temp
  end

  def set_value(index, value)
    temp = get(index)
  
    if temp
      temp.value = value
      true
    else
      false
    end
  end

  def insert(index, value)
    return if index >= @length || index.negative?
  
    return prepend(value) if index.zero?
  
    return append(value) if index == @length - 1
  
    new_node = Node.new(value)
    before = get(index - 1)
    after = before.next
  
    new_node.prev = before
    new_node.next = after
  
    before.next = new_node
    after.prev = new_node
  
    @length += 1
    true
  end
  
  def remove(index)
    return if index >= @length || index.negative?
  
    return shift if index.zero?
  
    return pop if index == @length - 1
  
    temp = get(index)
    before = temp.prev
    after = temp.next
  
    before.next = after
    after.prev = before
  
    temp.next = nil
    temp.prev = nil
  
    @length -= 1
    temp
  end

  def reverse
    temp = @head
    while temp
      temp.next, temp.prev = temp.prev, temp.next
      temp = temp.prev
    end
  
    @head, @tail = @tail, @head
  end

end

class Node 
  attr_accessor :value, :next, :prev

  def initialize(value)
    @value = value
    @next = nil
    @prev = nil
  end
end
