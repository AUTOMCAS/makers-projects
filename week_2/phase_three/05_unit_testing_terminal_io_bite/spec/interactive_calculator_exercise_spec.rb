require_relative "../lib/interactive_calculator_exercise"

describe InteractiveCalculator do
  it "subtrackts 2 numbers and returns result in terminal" do
    terminal = double :terminal

    expect(terminal).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
    expect(terminal).to receive(:puts).with("Please enter a number").ordered
    expect(terminal).to receive(:gets).and_return("4").ordered
    expect(terminal).to receive(:puts).with("Please enter another number").ordered
    expect(terminal).to receive(:gets).and_return("3").ordered
    expect(terminal).to receive(:puts).with("Here is your result:").ordered
    expect(terminal).to receive(:puts).with("4 - 3 = 1").ordered

    interactive_calculator = InteractiveCalculator.new(terminal)
    interactive_calculator.run
  end

  context "a string is given instead of integer on number 1" do
    it "fails" do
      terminal = double :terminal

      expect(terminal).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
      expect(terminal).to receive(:puts).with("Please enter a number").ordered
      expect(terminal).to receive(:gets).and_return("no work!").ordered

      interactive_calculator = InteractiveCalculator.new(terminal)
      expect { interactive_calculator.run }.to raise_error "You must enter a number!"
    end
  end

  context "a string is given instead of integer on number 2" do
    it "fails" do
      terminal = double :terminal

      expect(terminal).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
      expect(terminal).to receive(:puts).with("Please enter a number").ordered
      expect(terminal).to receive(:gets).and_return("4").ordered
      expect(terminal).to receive(:puts).with("Please enter another number").ordered
      expect(terminal).to receive(:gets).and_return("no work").ordered

      interactive_calculator = InteractiveCalculator.new(terminal)
      expect { interactive_calculator.run }.to raise_error "You must enter a number!"
    end
  end
end

