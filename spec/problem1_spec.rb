require 'problem1'

RSpec.describe User do
  let(:username) {User.new('vivian')}
  describe "#log_in" do
    it "logs the user in" do
      username.log_in
      expect(username.logged_in).to be true
    end
  end

  describe "#log_out" do
    it "logs the user out" do
      username.log_in
      username.log_out
      expect(username.log_out).to be false
    end
  end

  describe "#username" do
    it "returns the correct username" do
      username.username
      expect(username.logged_in).to be false
    end
  end
end
