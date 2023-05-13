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
        expect(list.head.data).to eq("doop")
    end

    it 'add node' do
        list = LinkedList.new
        list.append("deep")
        expect(list.head.next_node).to eq(nil)
    end

    it '#count' do
        list = LinkedList.new
        list.append("doop")
        list.append("deep")
        expect(list.count).to eq(2)
    end

    it '#to_string' do
        list = LinkedList.new
        list.append("doop")
        list.append("deep")
        expect(list.to_string).to eq("doop deep")
    end

    it 'adds noise' do
        list = LinkedList.new
        list.append("plop")
        list.to_string
        expect(list.head.data).to eq("plop")
        expect(list.to_string).to eq("plop")
    end
end

  