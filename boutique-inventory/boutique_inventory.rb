class BoutiqueInventory
  def initialize(items)
      @items = items
  end

  def item_names
      names = @items.map { |item| item[:name] }
      names.sort
  end

  def cheap
      @items.select {|item| item[:price] < 30 }
  end

  def out_of_stock
      @items.select {|item| item[:quantity_by_size] == {}}
  end

  def stock_for_item(desired_name)
      correct_item = items.find{|item| item[:name] == desired_name}
      correct_item[:quantity_by_size]
  end

  def total_stock
      quantities = @items.map{|item| item[:quantity_by_size].values}
      quantities.flatten.sum
  end

  private
  attr_reader :items
  end
