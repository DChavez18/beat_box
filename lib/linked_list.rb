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
end
        # while
        #     current_node.next_node == nil
            



    

    

