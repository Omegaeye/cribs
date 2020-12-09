class Room

    attr_reader :category,
                :length,
                :width,
                :is_painted

  def initialize(category, length, width)
    @category = category
    @length   = length
    @width    = width
    @is_painted = false
  end

  def area
    @length * @width.to_i
  end

  def is_painted?
    paint
  end

  def paint
    @is_painted = true
  end
end
