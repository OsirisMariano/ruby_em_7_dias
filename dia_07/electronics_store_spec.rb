require_relative 'electronics_store'
require 'rspec'

describe ElectronicProduct do
  describe "#purchase_product" do
    context "when purchasing products" do
      it "updates the stock correctly" do
        store = ElectronicProduct.new

        laptop = Laptop.new("Laptop X", 1000, 5, "15 inch")
        smartphone = Smartphone.new("Phone Y", 500, 10, "iOS")

        store.add_product(laptop)
        store.add_product(smartphone)

        store.purchase_product(laptop, 3)
        store.purchase_product(smartphone, 8)

        expect(laptop.stock).to eq(2)
        expect(smartphone.stock).to eq(2)
      end
    end
  end
end
