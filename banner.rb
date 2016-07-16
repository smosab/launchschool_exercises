require 'pry'
class Banner
  def initialize(message)
    @message = message
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
    binding.pry
  end

  private

  def horizontal_rule
    "+" + ("-" * (@message.size + 2)) + "+"
  end

  def empty_line
    "|" + (" " * (@message.size + 2)) + "|"
  end

  def message_line
    "| #{@message} |"
  end
end

banner1 = Banner.new('To boldly go where no one has gone before.')
banner2 = Banner.new("")
puts banner1
puts banner2