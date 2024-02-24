require 'problem2'
RSpec.describe TodoList do
  let(:todoitem) {TodoList.new}
  describe "#add" do
    it "adds a todo to the list" do
      todoitem.add("homework")
      expect(todoitem.todos).to include("homework")
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      todoitem.remove("homework")
      expect(todoitem.todos).not_to include("homework")
    end
  end

  describe "#todos" do
    it "returns all todos" do
      todoitem.add("homework")
      todoitem.add("walk")

      todoitem.todos()

      expect(todoitem.todos).to eq(["homework", "walk"])
    end
  end
end
