require 'spec_helper'

describe Digit do
  context "leds" do
    specify { Digit.new.leds.should be_kind_of Array }
    specify { Digit.new(0).leds.size.should eq(7) }
  end

  context "0" do
    specify { Digit.new(0).value.should eq(0) }

    context "size = 1" do
      specify { Digit.new(0, :size => 1).segments.size.should eq(5) }
      specify { Digit.new(0, :size => 1).segments[0].should eq(" - ") }
      specify { Digit.new(0, :size => 1).segments[1].should eq("| |") }
      specify { Digit.new(0, :size => 1).segments[2].should eq("   ") }
      specify { Digit.new(0, :size => 1).segments[3].should eq("| |") }
      specify { Digit.new(0, :size => 1).segments[4].should eq(" - ") }
    end

    context "size = 2" do
      specify { Digit.new(0, :size => 2).segments.size.should eq(7) }
      specify { Digit.new(0, :size => 2).segments[0].should eq(" -- ") }
      specify { Digit.new(0, :size => 2).segments[1].should eq("|  |") }
      specify { Digit.new(0, :size => 2).segments[2].should eq("|  |") }
      specify { Digit.new(0, :size => 2).segments[3].should eq("    ") }
      specify { Digit.new(0, :size => 2).segments[4].should eq("|  |") }
      specify { Digit.new(0, :size => 2).segments[5].should eq("|  |") }
      specify { Digit.new(0, :size => 2).segments[6].should eq(" -- ") }
    end
  end

  context "1" do
    specify { Digit.new(1).value.should eq(1) }

    context "size = 1" do
      specify { Digit.new(1, :size => 1).segments.size.should eq(5) }
      specify { Digit.new(1, :size => 1).segments[0].should eq("   ") }
      specify { Digit.new(1, :size => 1).segments[1].should eq("  |") }
      specify { Digit.new(1, :size => 1).segments[2].should eq("   ") }
      specify { Digit.new(1, :size => 1).segments[3].should eq("  |") }
      specify { Digit.new(1, :size => 1).segments[4].should eq("   ") }
    end

    context "size = 2" do
      specify { Digit.new(1, :size => 2).segments.size.should eq(7) }
      specify { Digit.new(1, :size => 2).segments[0].should eq("    ") }
      specify { Digit.new(1, :size => 2).segments[1].should eq("   |") }
      specify { Digit.new(1, :size => 2).segments[2].should eq("   |") }
      specify { Digit.new(1, :size => 2).segments[3].should eq("    ") }
      specify { Digit.new(1, :size => 2).segments[4].should eq("   |") }
      specify { Digit.new(1, :size => 2).segments[5].should eq("   |") }
      specify { Digit.new(1, :size => 2).segments[6].should eq("    ") }
    end
  end
end