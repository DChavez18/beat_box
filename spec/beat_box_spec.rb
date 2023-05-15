require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe BeatBox do

    it 'exists' do
        bb = BeatBox.new
        list = LinkedList.new
        expect(bb).to be_a(BeatBox)
    end

    it '#append' do
        bb = BeatBox.new
        list = LinkedList
        bb.append("deep doo ditt")
        expect(bb.append("deep doo ditt")).to eq("deep doo ditt")
    end

end