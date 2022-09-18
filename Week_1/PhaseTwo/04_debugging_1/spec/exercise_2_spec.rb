require_relative "../lib/exercise_2"

describe "encode method" do
  it 'expect encode ("theswiftfoxjumpedoverthelazydog", "secretkey") to output"EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"' do
  expect(encode("theswiftfoxjumpedoverthelazydog", "secretkey")).to eq "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  end
end

describe "decode method" do
  it 'expect decode ("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey") to output "theswiftfoxjumpedoverthelazydog"' do
  expect(decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")).to eq "theswiftfoxjumpedoverthelazydog"
  end
end