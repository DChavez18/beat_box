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

    def prepend(data)
        if @head.nil?
            @head = Node.new(data)
        else
            new_node = Node.new(data)
            new_node.next_node = @head
            @head = new_node
        end
        data
    end

    def insert(position, data)
        if position == 0
          prepend(data)
        else
          current_node = @head
          (position - 1).times do
            current_node = current_node.next_node
          end
            inserted_node = Node.new(data)
            inserted_node.next_node = current_node.next_node
            current_node.next_node = inserted_node
        end
            data
      end

      def find()
      end
end


    # def insert(position, data)
    #     if position == @head
    #         append(data)
    #     else
    #         new_node = @head
    #         moves new_node to the assigned position?
    #           times method?
    # end