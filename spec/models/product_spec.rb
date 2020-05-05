require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "Validations" do
    category = Category.new(name: "Floral")
    subject {
      Product.new(
          name: "Tree",
          price_cents: 1234,
          quantity: 5,
          category: category
        )
    }
    
    it "should be valid with valid attributes" do
      p subject
      expect(subject).to be_valid
    end
    
    it "should not be valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end
    
    it "is not valid without a price" do
      subject.price_cents = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a quantity" do
      subject.quantity = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a category" do
      subject.category = nil
      expect(subject).to_not be_valid
    end
  end
end