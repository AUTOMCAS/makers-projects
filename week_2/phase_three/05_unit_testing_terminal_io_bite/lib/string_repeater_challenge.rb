# string_repeater = StringRepeater.new(Kernel)
# string_repeater.run

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX


class StringRepeater
  def initialize(terminal)
    @terminal = terminal
  end

  def run
    @terminal.puts("Hello. I will repeat a string many times.")
    @terminal.puts("Please enter a string")
    str = @terminal.gets
    @terminal.puts("Please enter a number of repeats")
    repeats = num_checker
    @terminal.puts("Here is your result:")
    @terminal.puts("#{str*repeats.to_i}")
  end
  def num_checker
    repeats = @terminal.gets
    return if repeats.match?(/^-?\d+$/)
    fail "You must enter a number!"
  end
end