require('rspec')
require('triangle')
require('pry')

describe(Triangle) do
  describe('#triangle?') do

    it("returns false if any side is equal to 0") do
      test_triangle = Triangle.new(0, 7, 6)
      expect(test_triangle.triangle?()).to(eq(false))
    end
    it("returns false if it is not a triangle") do
      test_triangle = Triangle.new(2, 2, 6)
      expect(test_triangle.triangle?()).to(eq(false))
    end

    it("returns true if it is a triangle") do
      test_triangle = Triangle.new( 3, 5, 7)
      expect(test_triangle.triangle?()).to(eq(true))
    end


    it("returns 'equilateral' if all sides are equal") do
      test_triangle = Triangle.new(4, 4, 4)
      expect(test_triangle.type?()).to(eq("equilateral"))
    end

    it("returns 'isosceles' if two of three sides are equal") do
      test_triangle = Triangle.new(4, 4, 6)
      expect(test_triangle.type?()).to(eq("isosceles"))
    end

    it("returns 'scalene' if no sides are equal") do
      test_triangle = Triangle.new(4, 5, 6)
      expect(test_triangle.type?()).to(eq("scalene"))
    end
  end

end
