#!/usr/bin/env ruby
$LOAD_PATH << 'lib'

require 'display'
require 'digit'

case ARGV[1]
  when "-s"
    size = ARGV[2]
  else
    size = 2
end

case ARGV[0]
  when nil
    STDOUT.puts <<-EOF
  Please provide a sequence of numbers

  Usage:
    ruby lcd 012345
    ruby lcd 012345 -s 1

    options:
      -s DIGIT_SIZE. Default: 2
  EOF
  else
    STDOUT.puts Display.new(ARGV[0], :size => size).print
end