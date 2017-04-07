require 'rails_helper'

RSpec.describe Mathdojo do
    it "adds" do
        expect(Mathdojo.new.add(3,8).result).to eq(11)
    end
    it "adds arrays" do
        expect(Mathdojo.new.add([1,3,5,9]).result).to eq(18)
    end
    it "subtracts" do
        expect(Mathdojo.new.subtract(3,4).result).to eq(-7)
    end
    it "subtracts arrays" do
        expect(Mathdojo.new.subtract([2,5]).result).to eq(-7)
    end
    it "multiplies by the sum" do
        expect(Mathdojo.new.add(3).multiply_by_the_sum([5,7]).result).to eq(36)
    end
    it "resets return to 1" do
        expect(Mathdojo.new.add([1,3,5]).reset.add(5).result).to eq(6)
    end
end
