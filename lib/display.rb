class Display
  attr_reader :input, :digits, :size

  def initialize input = "0", args = {}
    options = {
      :size => 2
    }.merge(args)
    @input = input.to_s
    @size = options[:size].to_i
    @digits = []
    @input.split('').each { |digit| @digits << Digit.new(digit.to_i, :size => @size) }
  end

  def print
    ret = ""
    rows = 3 + @size * 2 # Top, Center, Bottom plus 2 more segments * size
    rows.times do |i|
      ret << @digits.map { |digit| digit.segments[i] }.join(" ") + "\n"
    end
    ret
  end
end