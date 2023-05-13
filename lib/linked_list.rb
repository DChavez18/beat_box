class LinkedList
    attr_reader :head
    def initialize
        @head = nil
        
    end

    
    def append(data)
        if @head.nil?
            @head = Node.new(data)
        else
            current_node = @head
        until current_node.next_node.nil?
                current_node = current_node.next_node
        end
            current_node.next_node = Node.new(data)
        end
        data
    end
    
    def count
            count = 0
            node = @head
        until node.nil?
            count += 1
            node = node.next_node
        end
            count
    end
    
    
    def to_string
            string = ""
            node = @head
        until node.nil?
            string += node.data + " "
            node = node.next_node
        end
            string.strip
    end
end


# def append(data)
#     if @head == nil
#         @head = Node.new(data)
#     else
#         current_node = @head
#         current_node = current_node.next_node
#         until
#             current_node.next_node.nil?
#             current_node.next_node = new_node
#         end
#         data
#     end
# end

# def count
#         count = 1
#     if @head.nil?
#         count = 1
#     else
#         count = 2
#         node = @head
#     until node.next_node.nil?
#         count += 1
#         node = node.next_node
#     end
# end
#     count
# end

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
#         string
#     end

# end

# def initialize
#     @head = nil
#   end