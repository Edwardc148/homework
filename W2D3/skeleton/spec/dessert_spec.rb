require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", :name => "edward") }
  let(:dessert) { Dessert.new("dessert", 50, chef) }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("dessert")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(50)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new("dessert","str",chef)}.to raise_error
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient("sugar")
      expect(dessert.ingredients).to eq(["sugar"])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredient = ["sugar", "salt", "splice"]
      ingredient.each do |ing|
        dessert.add_ingredient(ing)
      end
      dessert.mix!
      expect(dessert.ingredients).to_not eq(ingredient)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      dessert.eat(10)
      expect(dessert.quantity).to eq(40)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect {dessert.eat(100) }.to raise_error ("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Edward")
      expect(dessert.serve).to eq("Edward has made 50 desserts!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      allow(chef).to receive(:bake).with(dessert)
      dessert.make_more
    end
  end
end
