require "gratitudes"

RSpec.describe Gratitudes do
  it "returns a formatted string with one gratitude" do
    my_gratitude = Gratitudes.new
    my_gratitude.add("cats")
    result = my_gratitude.format
    expect(result).to eq ("Be grateful for: cats")
  end
end

RSpec.describe Gratitudes do
  it "returns formatted string joining several gratitudes" do
    my_gratitude = Gratitudes.new
    my_gratitude.add("dogs")
    my_gratitude.add("cats")
    result = my_gratitude.format
    expect(result).to eq ("Be grateful for: dogs, cats")
  end
end