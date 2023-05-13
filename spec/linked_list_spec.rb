require './lib/linked_list'
require './lib/node'

RSpec.describe LinkedList do
    it 'exists' do
        list = LinkedList.new
        expect(list).to be_a(LinkedList)
    end

    it 'has a head' do
        list = LinkedList.new
        head = nil
        expect(list.head).to eq(nil)
    end

    it '#append' do
        list = LinkedList.new
        list.append("doop")
        expect(list.append("doop")).to eq("doop")
    end

    it 'add node' do
        list = LinkedList.new
        list.append("deep")
        expect(list.head.next_node).to eq(nil)
    end
    

    

end

  