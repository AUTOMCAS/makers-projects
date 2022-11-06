require_relative "../lib/challenge.rb"

describe CatFacts do
  it "returns cat fact" do
    fake_requester = double :requester
    expect(fake_requester).to receive(:get).with(
    URI("https://catfact.ninja/fact")).and_return('{"fact":"There are more than 500 million domestic cats in the world, with approximately 40 recognized breeds.","length":100}')
    catfact = CatFacts.new(fake_requester)
    expect(catfact.provide).to eq ("Cat fact: There are more than 500 million domestic cats in the world, with approximately 40 recognized breeds.")
  end
end

# {"fact":"There are more than 500 million domestic cats in the world, with approximately 40 recognized breeds.","length":100}