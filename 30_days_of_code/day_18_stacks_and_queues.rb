# create the Solution class
class Solution
  	def initialize
        @stack = []
        @queue = []
    end
    
    def push_character(c)
        @stack.push(c)
    end
    
    def enqueue_character(c)
        @queue.push(c)
    end
    
    def pop_character
        @stack.pop
    end
    
    def dequeue_character
        @queue.shift
    end
end
