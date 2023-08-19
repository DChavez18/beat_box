require './lib/node'
require './lib/binary_search_tree'
require 'rspec'

RSpec.describe BinarySearchTree do

  it "exists" do
    tree = BinarySearchTree.new

    expect(tree).to be_an_instance_of(BinarySearchTree)
  end

  it "inserts nodes and returns the depth of node in tree" do
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")

    expect(tree.insert(61, "Bill & Ted's Excellent Adventure")).to eq(1)
    expect(tree.insert(16, "Johnny English")).to eq(2)
    expect(tree.insert(92, "Sharknado 3")).to eq(2)
    expect(tree.insert(50, "Hannibal Buress: Animal Furnace")).to eq(3)
  end

  it "checks the presence of the score in the tree" do
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")

    expect(tree.include?(16)).to eq(true)
    expect(tree.include?(72)).to eq(false)
  end

  it "reports the depth of the tree where a score appears and returns nil if the score does not exist" do
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")

    expect(tree.depth_of(61)).to eq(0)
    expect(tree.depth_of(92)).to eq(1)
    expect(tree.depth_of(51)).to eq(nil)
  end

  it "finds the highest score in the tree" do
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")

    expect(tree.max).to eq({"Sharknado 3" => 92})
  end

  it "finds the lowest score in the tree" do
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")

    expect(tree.min).to eq({"Johnny English"=>16})
  end

  it "returns an array of hashes of all movies and scores in sorted ascending order" do
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")

    expect(tree.sort).to eq( [{"Johnny English"=>16},
                              {"Hannibal Buress: Animal Furnace"=>50},
                              {"Bill & Ted's Excellent Adventure"=>61},
                              {"Sharknado 3"=>92}])
  end
end