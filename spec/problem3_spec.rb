require 'problem3'
RSpec.describe StringWrapper do
  let(:word) {StringWrapper.new("hello")}
  describe "#reverse" do
    it "reverses the string" do
      word.reverse
      expect(word.reverse).to eq("olleh")
    end
  end

  describe "#upcase" do
    it "converts the string to uppercase" do
      word.upcase
      expect(word.upcase).to eq("HELLO")
    end
  end

  describe "#downcase" do
    it "converts the string to lowercase" do
      word.downcase
      expect(word.downcase).to eq("hello")
    end
  end
end
