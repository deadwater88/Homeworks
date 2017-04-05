require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "DAVID FUCKING WONG") }
  let(:fudge) do
    Dessert.new('cake', 100, chef)
  end

  describe "#initialize" do
    it "sets a type" do
      expect(fudge.type).to eq('cake')
    end

    it "sets a quantity" do
      expect(fudge.quantity).to eq(100)
    end

    it "starts ingredients as an empty array" do
      expect(fudge.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{ Dessert.new('cake',  'floop', chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      fudge.add_ingredient("flour")
      expect(fudge.ingredients).to include('flour')
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      fudge.add_ingredient('flour')
      fudge.add_ingredient('sugar')
      fudge.add_ingredient('eggs')
      fudge.add_ingredient('oil')
      fudge.mix!
      expect(fudge.ingredients).to contain_exactly('flour', 'eggs', 'sugar', 'oil')
      expect(fudge.ingredients).to_not eq(['flour', 'sugar', 'eggs', 'oil'])
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      fudge.eat(20)
      expect(fudge.quantity).to eq(80)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{fudge.eat(120)}.to raise_error(RuntimeError)
    end

  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("David Fucking Wong")
      expect(fudge.serve).to include("David Fucking Wong")
    end
  end

  describe "#make_more" do
    it "calls bake on the fudge's chef with the fudge passed in" do
      expect(chef).to receive(:bake).with(fudge)
      fudge.make_more
    end
  end
end
