# frozen_string_literal: true

require File.join(File.dirname(__FILE__), 'gilded_rose')
require 'test/unit'

# Class TestUntitled to implement unit tests
class TestUntitled < Test::Unit::TestCase

  def test_foo
    items = [Item.new("foo", 0, 0)]
    GildedRose.new(items).update_quality()
    assert_equal items[0].name, "foo"
  end

  def test_quality
    items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 7, 30)]
    GildedRose.new(items).update_quality()
    assert_equal items[0].quality, 33
  end

  def test_sell_in
    items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 1, 0)]
    GildedRose.new(items).update_quality()
    assert_equal items[0].sell_in, 0
  end

end