class LinkedList
    attr_accessor :head
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

      def find(position, number_of_elements)
            current_node = @head
            (position).times do
            current_node = current_node.next_node
        end
            string = ""
            number_of_elements.times do
            string += current_node.data + " "
            current_node = current_node.next_node
        end
            string.strip
    end

    def includes?(data)
            current_node = @head
        until current_node.nil?
        return true if 
            current_node.data == data
            current_node = current_node.next_node
        end
            false
    end

    def pop
            current_node = @head
        until current_node.next_node.next_node.nil?
            current_node = current_node.next_node
        end
  
            current_node.next_node = nil
    end

end

    # def append(data)
    #     takes in data which is the data to be stored in node
    #     start at head, if head is nil add node there
    #     if head is not nil then create a node to start at the head of the list
    #     use a loop to look over list until it finds nil
    #     current node must become next node
    #     when current node is the last node add new

    # end

    # def find(position, elements)
    #     start at head, iterate over elements however many times,
    #     makes the elements data into string.
    #     remove white space. use .strip
    #     use times.do 
    # end

    # def includes
    #     this method needs to check the list starting from the head
    #     checking if the data in each node matches the data it is looking for
    #     when it finds a match, we return true.
    #     if not it returns false
    # end

    # def pop
    #     this method removes elements the last element from the list
    #     if list is empty return nil
    #     look over list until you find tail (nil)
    #     make a loop that removes the node that is pointing to nil
    # # end

    # def insert
    #     this method inserts data at a given position within the list
    #     start at the head and determine if the data is being
    #     inserted at the head,
    #     make a node that starts at the head and goes through a loop
    #     which finds the node which is positioned before
    #     where the input data(new_node) goes
    #     reposition where we are in the loop
    #     make sure to keep track of where the inserted_node is pointing 
    # end

    # def prepend
    #     start at the head and if head is nil add data
    #     create new node with data, and assign it to the head,
    #     which is the front of the list.
    #     set the next_node of the new data to the head
    #     connect the rest of the list to the new node
    # end

    # def to_string
    #     create an empty variable to store new data
    #     start at head to look over linked list, use a loop(until, while)
    #     change node data to string
    #     move to next node and repeat
    #     when all data is strings remove the white space(.strip)
    #     return new string value
    # end

    # def count
    #     counts number of nodes in list
    #     start the count at 0, by naming a variable
    #     create a node variable and start it at the head
    #     create a loop that looks over list until it hits a nil value
    #     add 1 everytime a node has been looped over
    #     move nodes by using next_node
    #     return value of total nodes

    # end
