class Stack
  def initialize
    # create ivar to store stack here!
    @stack = []
  end

  def add(el)
    # adds an element to the stack
    @stack.push(el)
  end

  def remove
    # removes one element from the stack
    @stack.pop
  end

  def show
    # return a copy of the stack
    @stack.dup
  end
end

class Queue
  def initialize
    @stack = []
  end

  def enqueue(el)
    @stack.unshift(el)
  end

  def dequeue
    @stack.pop
  end

  def show
    @stack.dup
  end
end

class Map
  def initialize
    @stack = []
  end

  def assign(key, value)
    if lookup(key) == false
      @stack.push([key, value])
    else
      current_idx = nil
      @stack.each.with_index do |pair, idx|
        if pair[0] == key
          current_idx = idx
        end
      end
      @stack[current_idx] = [key, value]
    end
    @stack
  end

  def lookup(key)
    @stack.each do |pair|
      return true if pair[0] == key
    end
    false
  end

  def remove(key)
    idx_to_del = nil
    @stack.each.with_index do |pair, idx|
      if pair[0] == key
        idx_to_del = idx
      end
    end
    if idx_to_del
      @stack.delete_at(idx_to_del)
    end
    @stack
  end

  def show
    @stack.dup
  end
end
