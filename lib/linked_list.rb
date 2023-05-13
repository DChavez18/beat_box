class LinkedList
    attr_reader :head
    def initialize
        @head = nil
    end

    def append(data)
        if @head == nil
            @head = Node.new(data)
        else
            current_node = @head
            new_node = Node.new(data)
            data 
        end     
    end

    def count
        count = 1
        if @head.nil?
            count = 1
        else
            count = 2
            node = @head
        until node.next_node.nil?
            count += 1
            node = node.next_node
        end
    end
        count
    end
end
        # while
        #     current_node.next_node == nil
            



    

    

