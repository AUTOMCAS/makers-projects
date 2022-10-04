require 'spec_helper'
require 'rack/test'
require_relative '../../app'

describe Application do 
  include Rack::Test::Methods

  let(:app) { Application.new }

  context "GET to /names" do
    it "Returns 200 OK with the right content" do
      response = get("/names?names=Julia, Mary, Karim")

      expect(response.status).to eq(200)
      expect(response.body).to eq("Julia, Mary, Karim")
    end
    
    it "Returns 404 Not Found when the content is not found" do
      response = get("/name?names=Julia,%20Mary,%20Karim")

      expect(response.status).to eq(404)
    end
  end

  context "POST to /sort-names" do
    it "Returns 200 OK with single name" do
      response = post("/sort-names", names: "Joe")

      expect(response.status).to eq(200)
      expect(response.body).to eq ("Joe")
    end

    it "Returns 200 OK with a string of many names" do
      response = post("/sort-names", names: "Joe,Alice,Zoe,Julia,Kieran")

      expect(response.status).to eq(200)
      expect(response.body).to eq("Alice,Joe,Julia,Kieran,Zoe")
    end

    it "Returns 404 Not Found when content is not found" do
      response = post("/sort-name", apples: "apple")

      expect(response.status).to eq(404)
    end

    it "Returns 500 when parameter name is invalid" do
      response = post("/sort-names", apples: "apple")

      expect(response.status).to eq(500)
    end
  end

  context 'GET to /hello' do
    it 'contains a h1 title' do
      response = get'/hello'

      expect(response.body).to include('<h1>Hello!</h1>')
    end
  end
end