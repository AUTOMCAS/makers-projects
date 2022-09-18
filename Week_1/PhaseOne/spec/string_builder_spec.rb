require "string_builder"

RSpec.describe StringBuilder do
  it "return length of given string" do
    string_builder = StringBuilder.new
    string_builder.add("Tigers")
    result = string_builder.size()
    expect(result).to eq 6
  end
end

RSpec.describe StringBuilder do
  it "return length of given string" do
    string_builder = StringBuilder.new
    string_builder.add("Tiger time")
    result = string_builder.size()
    expect(result).to eq 10
  end
end

RSpec.describe StringBuilder do
  it "returns given string" do
    string_builder = StringBuilder.new
    string_builder.add("Shark")
    result = string_builder.output()
    expect(result).to eq "Shark"
  end
end

RSpec.describe StringBuilder do
  it "given a succession of strings, returns strings concatenated" do
    string_builder = StringBuilder.new
    string_builder.add("Foxes ")
    string_builder.add("are ")
    string_builder.add("awesome!")
    result = string_builder.output()
    expect(result).to eq "Foxes are awesome!"
  end
end

RSpec.describe StringBuilder do
  it "given a succession of strings, returns length of string" do
    string_builder = StringBuilder.new
    string_builder.add("Seals ")
    string_builder.add("are ")
    string_builder.add("dogs ")
    string_builder.add("of ")
    string_builder.add("the ")
    string_builder.add("sea.")
    result = string_builder.size()
    expect(result).to eq 26
  end
end
