# frozen_string_literal: true

# Class GildedRose
class GildedRose
  
  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each do |item|
      if (item.name != 'Aged Brie') && (item.name != 'Backstage passes to a TAFKAL80ETC concert')
        if item.quality.positive? && (item.name != 'Sulfuras, Hand of Ragnaros')
          item.quality = item.quality - 1
        end
      elsif item.quality < 50
        item.quality += 1
        if item.name == 'Backstage passes to a TAFKAL80ETC concert'
          if item.sell_in < 11 && (item.quality < 50)
            item.quality += 2 # Increment quality passed 10 days of sell_in
          end
          if item.sell_in < 6 && (item.quality < 50)
            item.quality += 3 # Increment quality iff missing less than 5 days
          end
        end
      end
      if item.name != 'Sulfuras, Hand of Ragnaros'
        item.sell_in -= 1
      end
      if item.sell_in.negative?
        if item.name != 'Aged Brie'
          if item.name != 'Backstage passes to a TAFKAL80ETC concert'
            if item.quality.positive? && (item.name != 'Sulfuras, Hand of Ragnaros')
              item.quality -= 1 
            end
          else
            item.quality -= item.quality
          end
        elsif item.quality < 50
          item.quality += 1
        end
      end
    end
  end
end

class Item

  # declare accessible variables to use in other files
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def to_s
    "#{@name}, #{@sell_in}, #{@quality}"
  end
end
