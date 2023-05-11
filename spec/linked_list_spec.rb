require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do

    it 'exists' do

        list = LinkedList.new(list)
        
        expect(list).to be_instance_of(LinkedList)

    end

    it 'has a head' do

        list = LinkedList.new(list)

        expect(list.head).to eq(nil)
        
    end

    it '#append' do

        list = LinkedList.new(list)
        list = list.append("doop")
        
        expect(list.append).to eq("doop")
    
    end



end