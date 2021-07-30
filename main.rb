require "rspec/autorun"

class Calc
  def add(a,b)
      a + b
  end

  def factorial(a)
    if a == 0
      return 1
    else
      a * factorial(a - 1)
    end
  end

end


describe Calc do
  describe "#add" do
    it "Adds two numbers" do
      calculator = Calc.new

      expect(calculator.add(1,1)).to eq(2) 
    end
  end

  describe '#factorial' do
    it "It calculates the factorial of provided integer" do
      fact = Calc.new

      expect(fact.factorial(3)).to eq(6)
    end
  end

end