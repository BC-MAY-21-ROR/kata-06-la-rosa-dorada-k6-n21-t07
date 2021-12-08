# frozen_string_literal: true

require File.join(File.dirname(__FILE__), 'gilded_rose')

describe GildedRose do

  describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("foo", 0, 0)]
      GildedRose.new(items).update_quality
      expect(items[0].name).to eq "foo"
    end
  end

  describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 7, 30)]
      GildedRose.new(items).update_quality
      expect(items[0].quality).to eq 33
    end
  end

  describe "#update_quality" do
    it 'lowers sell in value by 1 at the end of the day' do
      item = Item.new("Backstage passes to a TAFKAL80ETC concert", sell_in = 1, quality = 0)
      items = [item]
      gilded_rose = GildedRose.new(items)
      gilded_rose.update_quality
      expect(item.sell_in).to eq 0
  end
  end

end
