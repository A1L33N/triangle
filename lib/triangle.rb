class Triangle
  define_method(:initialize) do |length, width, height|
    @length = length
    @width = width
    @height = height
  end


  define_method(:triangle?) do
      if @length.==(0) || @width.==(0) || @height.==(0)
        false

      else (@length.+(@width)).>(@height) && (@length.+(@height)).>(@width) && (@width.+(@height)).>(@length)
      end
  end

  define_method(:type?) do
    if @length.==(@width && @height)
      "equilateral"

    elsif @length.==(@width) || @length.==(@height) || @width.==(@height)
      "isosceles"

    else
      "scalene"

    end
  end

end
