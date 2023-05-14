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

    it 'adds suu' do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        expect(list.head.next_node.data).to eq("suu")
    end

    it '#prepend' do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        expect(list.head.data).to eq("dop")
    end

    it 'puts out a string and counts' do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        expect(list.to_string).to eq("dop plop suu")
        expect(list.count).to eq(3)
    end

    it '#insert' do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        expect(list.to_string).to eq("dop plop suu")
        list.insert(1, "woo")
        expect(list.to_string).to eq("dop woo plop suu")
    end

    it 'test new string' do
        list = LinkedList.new
        list.append("deep")
        list.append("woo")
        list.append("shi")
        list.append("shu")
        list.append("blop")
        expect(list.to_string).to eq("deep woo shi shu blop")
    end

    it '#find' do
        list = LinkedList.new
        list.append("deep")
        list.append("woo")
        list.append("shi")
        list.append("shu")
        list.append("blop")
        expect(list.find(2, 1)).to eq("shi")
        # require 'pry'; binding.pry
    end

end

  