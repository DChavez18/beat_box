class LinkedList

    attr_reader :head, :count
    def initialize(count)
        @head = nil
        @count = 0
       
    
        
    end

    def append(data)
        new_node = Node.new(data)
        if @head.nil?
            @head = new_node
        else
            current_node = @head
            while current_node.next_node != nil
                current_node = current_node.next_node
            end
            current_node.next_node = new_node
        end
      
    end

    def count
        if count = 0 && current_node = @head

        @count += 1
        

    end


end

    

