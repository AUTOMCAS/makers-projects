require_relative 'lib/item_repository'
require_relative 'lib/order_repository'
require_relative 'lib/database_connection'

class Application

  def initialize(io, item_repository, order_repository)
    DatabaseConnection.connect('shop_manager')
    @io = io
    @item_repository = item_repository
    @order_repository = order_repository
  end

  def run
    @io.puts("Welcome to the shop managment program!")
    @io.puts("")
    @io.puts("1 = list all shop items")
    @io.puts("2 = create a new item")
    @io.puts("3 = list all orders")
    @io.puts("4 = create a new order")

    input = @io.gets
    @io.puts('Here is a list of all shop items:')
    
    all_items = @item_repository.all
    
    all_items.each do |item|
      @io.puts "##{item.id} #{item.name} - Unit price: #{item.price} - Quantity: #{item.quantity}"
    end

  end

end

if __FILE__ == $0
  app = Application.new(
    Kernel,
    ItemRepository.new,
    OrderRepository.new
  )
  app.run
end