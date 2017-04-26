require_relative '../lib/calculator'

describe Calculator do
  before(:context) do
    @my_calculator = Calculator.new(1)
  end
  describe 'Initialization' do
    it 'is an instance of the Calculator class' do
      expect(@my_calculator).to be_instance_of(Calculator)
    end
    it 'should assign num' do
      expect(@my_calculator.result).to eq(1)
    end
  end
  describe 'Result' do
    it 'should return current result' do
      expect(@my_calculator.result).to eq(1)
    end
  end
  describe 'Addition' do
    it 'add x to result value' do
      @my_calculator.add(5)
      expect(@my_calculator.result).to eq(6)
      p @my_calculator.result
    end
  end
  describe 'Reset' do
    it 'reset value to x' do
      @my_calculator.reset(2)
      expect(@my_calculator.result).to eq(2)
      p @my_calculator.result
    end
  end
  describe 'Subtraction' do
    it 'substract x from result' do
      @my_calculator.subtract(1)
      expect(@my_calculator.result).to eq(1)
      p @my_calculator.result
    end
  end
  describe 'Multiply' do
    it 'multiply x from result' do
      @my_calculator.multiply(3)
      expect(@my_calculator.result).to eq(3)
      p @my_calculator.result
    end
  end
  describe 'Divide' do
    it 'divide x from result' do
      @my_calculator.divide(1)
      expect(@my_calculator.result).to eq(3)
      p @my_calculator.result
    end
  end
  describe 'Chain' do
    it 'methods chainable in any order' do
      @my_calculator.add(2).subtract(2).multiply(4).divide(3)
      expect(@my_calculator.result).to eq(4)
    end
  end
end
