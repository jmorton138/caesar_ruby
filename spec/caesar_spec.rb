require "./caesar.rb"

describe "#caesar_cipher" do
    it "returns a sentence converted to the caesar cipher" do
        expect(caesar_cipher("what a String!", 5)).to eql("bmfy f Xywnsl!")
    end

    it "handles punctuation" do
        expect(caesar_cipher("what? a' String!", 5)).to eql("bmfy? f' Xywnsl!")
    end

    it "wraps from z to a" do
        expect(caesar_cipher("zZzZ yYyY", 2)).to eql("bBbB aAaA")
    end

    it "handles numbers" do
        expect(caesar_cipher("what a 789String!", 5)).to eql("bmfy f 789Xywnsl!")
    end
end


