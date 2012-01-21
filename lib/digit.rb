class Digit
  PATTERN = [["-", "|", "|", " ", "|", "|", "-"], # 0
             [" ", " ", "|", " ", " ", "|", " "], # 1
             ["-", " ", "|", "-", "|", " ", "-"], # 2
             ["-", " ", "|", "-", " ", "|", "-"], # 3
             [" ", "|", "|", "-", " ", "|", " "], # 4
             ["-", "|", " ", "-", " ", "|", "-"], # 5
             ["-", "|", " ", "-", "|", "|", "-"], # 6
             ["-", " ", "|", " ", " ", "|", " "], # 7
             ["-", "|", "|", "-", "|", "|", "-"], # 8
             ["-", "|", "|", "-", " ", "|", "-"]] # 9

  attr_reader :value, :segments, :leds

  def initialize value = 0, args = {}
    options = {
      :size => 2
    }.merge(args)

    @value = value

    @leds = PATTERN[value]

    @segments = []
    @segments << " #{@leds[0] * options[:size]} "
    options[:size].times { @segments << "#{@leds[1]}#{" " * options[:size]}#{@leds[2]}" }
    @segments << " #{@leds[3] * options[:size]} "
    options[:size].times { @segments << "#{@leds[4]}#{" " * options[:size]}#{@leds[5]}" }
    @segments << " #{@leds[6] * options[:size]} "
  end
end