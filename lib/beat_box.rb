class BeatBox
    attr_reader :list
    def initialize
        @list = LinkedList.new
        
    end

    def append(data)
        @list.append(data)
        data
    end

    def play
       `say -r 200 -v Alex  #{@list.to_string}`
    end
end

# def append
#     method takes in data
#     use LinkedList append method
#     to add data
#     return data as a string
# end

# def play
#     use the command tool say with backticks
#     and string interpolation
#     use to_string method attached to the LinkedList
# end

