class Stack
    def initialize
      @stack_arr = []
    end
  
    def push(el)
      stack_arr.push(el)
      el
    end
  
    def pop
      stack_arr.pop
    end
  
    def peek
      stack_arr.last
    end
  
    private
  
    attr_reader :stack_arr
  
  end
  
  
  
  # EXERCISE 2
  class Queue
    def initialize
      @stack_arr = []
    end
  
    def enqueue(el)
      stack_arr.push(el)
      el
    end
  
    def dequeue
      stack_arr.shift
    end
  
    def peek
      stack_arr.first
    end
  
    private
  
    attr_reader :stack_arr
    
  end
  
  
  
  # EXERCISE 3
  class Map
    def initialize
      @stack_arr = []
    end
  
    def set(key, value)
      pair_index = stack_arr.index { |pair| pair[0] == key }
      if pair_index
        stack_arr[pair_index][1] = value
      else
        stack_arr.push([key, value])
      end
      value
    end
  
    def get(key)
      stack_arr.each { |pair| return pair[1] if pair[0] == key }
      nil
    end
  
    def delete(key)
      value = get(key)
      stack_arr.reject! { |pair| pair[0] == key }
      value
    end
  
    def show
      deep_dup(stack_arr)
    end
  
    private
  
    attr_reader :stack_arr
    
    def deep_dup(arr)
      arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
    end  
  end
  