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
        end
            data
             
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

    # def to_string
        
    #     if @head.nil?
    #         return ""
    #     else
    #         node = @head
    #         string = node.data.to_s
    #         until node.next_node.nil?
    #             string += " " + node.next_node.data.to_s
    #             node = node.next_node
    #         end
    #     end
    #     string
    # end

end
        # while
        #     current_node.next_node == nil
            



    

    

