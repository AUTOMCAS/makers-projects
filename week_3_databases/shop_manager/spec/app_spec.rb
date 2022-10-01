require_relative '../app'

RSpec.describe Application do
  it "returns a list of shop items" do 
    @io = double :io
    expect(@io).to receive(:puts).with("Welcome to the shop managment program!").ordered
    expect(@io).to receive(:puts).with("").ordered
    expect(@io).to receive(:puts).with("1 = list all shop items").ordered
    expect(@io).to receive(:puts).with("2 = create a new item").ordered
    expect(@io).to receive(:puts).with("3 = list all orders").ordered
    expect(@io).to receive(:puts).with("4 = create a new order").ordered

    expect(@io).to receive(:gets).and_return("1").ordered

    expect(@io).to receive(:puts).and_return('Here is a list of all shop items:')
    expect(@io).to receive(:puts).and_return('#1 Book case - Unit price: 300 - Quantity: 5')
    expect(@io).to receive(:puts).and_return('#1 Chicken treats - Unit price: 3 - Quantity: 30')

    app = Application.new(@io, ItemRepository.new, OrderRepository.new)
    app.run
  end
end