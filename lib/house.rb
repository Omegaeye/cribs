class House

  attr_reader :price,
              :address,
              :rooms

  def initialize(price, address)
    @price   = price
    @address = address
    @rooms   = []
  end

  def price
    @price.to_s.gsub(/[$,]/,'').to_i
  end

  def add_room(name)
    @rooms << name
  end

  def above_market_average?
    price > 500000
  end

  def rooms_from_category(category)
    @rooms.select do |room|
      room.category == category
    end
  end
  def total_width_of_rooms
    @rooms.collect(&:width).map(&:to_i)
  end

  def area
    length = @rooms.collect(&:length)
    width = @rooms.collect(&:width).map(&:to_i)
    combine = length.zip(width).map{|x, y| x * y}
    combine.inject(0){|sum,x| sum + x }
  end

  def details
    detail = {}
    detail["price"] = price
    # detail["address"] = @address
  end

end
