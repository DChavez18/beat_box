require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe BeatBox do

    it 'exists'do
        bb = BeatBox.new
        list = LinkedList.new
        expect(bb).to be_a(BeatBox)
    end

end