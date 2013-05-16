require 'spec_helper'

describe HexConverter do 
  describe ".matches?" do 
    it "should match args with hex string" do 
      expect(HexConverter.matches?("#FFFFFF")).to be_true
    end

    it "should match args with short hex string" do 
      expect(HexConverter.matches?("#FFF")).to be_true
    end

    it "should match args with lower case hex string" do 
      expect(HexConverter.matches?("#ffffff")).to be_true
    end

    it "should not match args without hex string" do 
      expect(HexConverter.matches?("asdf")).to be_false
    end

    it "should not match args without hex string" do 
      expect(HexConverter.matches?(h: 225, s: 73, l: 57)).to be_false
    end
  end

  describe ".rgb" do 
    it "should convert to rgb" do 
      color = HexConverter.new("#3366cc")
      rgb   = {r: 51, g: 102, b: 204}
      expect(color.rgb).to eq rgb
    end
  end
end