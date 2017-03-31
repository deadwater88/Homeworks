class Stack

  def initialize(arr = [])
    @stack = arr
  end

  def add(el)
    @stack.push(el)
  end

  def remove
    @stack.pop
  end

  def show
    @stack
  end
end

class Queue
  def initialize(arr = [])
    @queue = arr
  end

  def enqueue(el)
    @queue.unshift(el)
  end

  def dequeue
    @queue.pop
  end

  def show
    @queue
  end

end

class Map
  def initialize(map)
    @map = map
  end

  def assign(key, value)
    remove(key)
    @map << [key, value]
  end

  def lookup(key)
    @map.each do |k, v|
      return v if k == key
    end
    nil
  end

  def remove(key)
    @map.each_with_index do |k, v, index|
      delete_at(index) if k == key
    end
  end

  def show
    @map
  end

end
