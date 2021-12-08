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


#Item class was moved to 'item.rb' file