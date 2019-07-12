class Stack
    def initialize
      @stack = []
    end

    def push(el)
      @stack.push(el)
    end

    def pop
      @stack.pop
    end

    def peek
      @stack.last
    end
end

class Queue
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.unshift(el)
    end

    def dequeue
        @queue.pop
    end

    def peek
        @queue[-1]
    end
end

class Map
    def initialize
        @map = []
    end

    def set(key,value)
        if @map.none? {|array| array[0] == key}
            @map << [key, value]
        else
            @map.map! do |array|
                if array[0] == key
                    [key, value]
                else
                    array
                end
            end
        end
    end

    def get(key)
        @map.each do |array|
            if array[0] == key
                return array[1]
            end
        end
    end

    def delete(key)
        @map.each_with_index do |array, i|
            if array[0] == key
                @map.delete_at(i)
            end
        end
    end

    def show
        return @map
    end
end
