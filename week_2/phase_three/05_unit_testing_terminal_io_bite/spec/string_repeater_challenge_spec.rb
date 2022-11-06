require_relative "../lib/string_repeater_challenge"

describe StringRepeater do
  it "takes a string and repeats it to terminal" do
    terminal = double :terminal
    expect(terminal).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
    expect(terminal).to receive(:puts).with("Please enter a string").ordered
    expect(terminal).to receive(:gets).and_return("TWIX").ordered
    expect(terminal).to receive(:puts).with("Please enter a number of repeats").ordered
    expect(terminal).to receive(:gets).and_return("10").ordered
    expect(terminal).to receive(:puts).and_return("Here is your result:").ordered
    expect(terminal).to receive(:puts).and_return("TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX").ordered

    string_repeater = StringRepeater.new(terminal)
    string_repeater.run
  end

  context "An string is given rather than a integer"
  it "fails" do
    terminal = double :terminal
    expect(terminal).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
    expect(terminal).to receive(:puts).with("Please enter a string").ordered
    expect(terminal).to receive(:gets).and_return("TWIX").ordered
    expect(terminal).to receive(:puts).with("Please enter a number of repeats").ordered
    expect(terminal).to receive(:gets).and_return("string not int!").ordered

    string_repeater = StringRepeater.new(terminal)
    expect { string_repeater.run }.to raise_error "You must enter a number!"
  end
end