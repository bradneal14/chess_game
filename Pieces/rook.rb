class Rook
  def initialize(value)
    @value = value
    @color = ""
  end

  def color_is
    if ('a'..'z').include?(value[-2])
      @color = "black"
    else
      @color = "white"
    end
  end

  def to_s
    @value
  end

end
