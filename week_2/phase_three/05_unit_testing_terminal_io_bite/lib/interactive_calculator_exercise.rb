
# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1

class InteractiveCalculator
  def initialize(terminal)
    @terminal = terminal
  end
  
  def run
    @terminal.puts "Hello. I will subtract two numbers."
    @terminal.puts "Please enter a number"
    number_1 = get_number
    @terminal.puts "Please enter another number"
    number_2 = get_number
    @terminal.puts "Here is your result:"
    @terminal.puts "#{number_1} - #{number_2} = #{number_1 - number_2}"
  end

  def get_number
    response = @terminal.gets
    return response.to_i if response.to_i.to_s == response
    fail "You must enter a number!"
  end
end

# interactive_calculator = InteractiveCalculator.new(Kernel)
# interactive_calculator.run
