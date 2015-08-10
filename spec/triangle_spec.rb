require('rspec')
require('triangle')
require('pry')

describe(Triangle) do
  describe('#triangle?') do
    it("returns false if it is not a triangle") do
      test_triangle = Triangle.new(2, 2, 6)
      expect(test_triangle.triangle?()).to(eq(false))
    end

  end


end
