require File.join(File.dirname(__FILE__), 'gilded_rose')

describe GildedRose do

  describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("foo", 0, 0)]
      GildedRose.new(items).update_quality()
      expect(items[0].name).to eq "foo"
    end
  end

  describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 7, 30)]
      GildedRose.new(items).update_quality()
      expect(items[0].quality).to eq 33
    end
  end

end
