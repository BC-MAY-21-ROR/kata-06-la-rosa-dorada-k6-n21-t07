class ItemUpdater
  attr_reader: item

  def initialize(item)
    @item = item
  end

  def update_quality
    update_quality
    update_sell_in
  end

  private

  def update_quality
    # raise NoImplementedError
  end

  def update_sell_in
    # raise NoImplementedError
  end
end