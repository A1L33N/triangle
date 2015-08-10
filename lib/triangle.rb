class Triangle
  define_method(:initialize) do |length, width, height|
    @length = length
    @width = width
    @height = height
  end


  define_method(:triangle?) do
    (@length.+(@width)).>(@height) && (@length.+(@height)).>(@width) && (@width.+(@height)).>(@length)
  end

  define_method(:type?) do
    if @length.==(@width) && @length.==(@height)
      "equilateral"

    else @length.==(@width) || @length.==(@height) || @width.==(@height)
      "isosceles"

    end
  end

end
