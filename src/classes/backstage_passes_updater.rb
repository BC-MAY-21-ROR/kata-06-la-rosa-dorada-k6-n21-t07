class BackstagePassesUpdater < ItemUpdater
    private

    def update_quality
      if item.quality < 50
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
    end

    def update_sell_in
    end

end    