require 'spec_helper'

describe Display do
  specify { Display.new("012345").input.should eq("012345") }
  specify { Display.new("0").digits.size.should eq(1) }
  specify { Display.new("01").digits.size.should eq(2) }
  specify { Display.new("0", :size => 1).size.should eq(1) }
  specify { Display.new("0").size.should eq(2) }
  specify { Display.new("0").digits[0].should be_kind_of Digit }
  specify { Display.new("0").print.should eq(" -- \n|  |\n|  |\n    \n|  |\n|  |\n -- \n") }
  specify { Display.new("01").print.should eq(" --      \n|  |    |\n|  |    |\n         \n|  |    |\n|  |    |\n --      \n") }
end