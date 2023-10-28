require_relative 'solver_class'

describe 'Tests the Solver Class' do
  before :all do
    @object = Solver.new
  end

  it 'tests if the factorial method works with a negative number' do
    expect { @object.factorial(-7) }.to raise_error(ArgumentError, 'Number must be non-negative')
  end

  it 'returns the factorial of a positive number' do
    expect(@object.factorial(5)).to eq(120)
  end

  it 'returns 1 when the argument is 0' do
    expect(@object.factorial(0)).to eq(1)
  end

  it 'tests if the reverse method raises an error for non-string input' do
    expect { @object.reverse(6) }.to raise_error(ArgumentError, 'Input must be a string')
  end

  it 'tests if the reverse method reverses a string input' do
    expect(@object.reverse('Austin')).to eq('nitsuA')
  end

  it 'returns "fizz" when argument is divisible by 3' do
    expect(@object.fizzbuzz(9)).to eq('fizz')
  end

  it 'returns "buzz" when argument is divisible by 5' do
    expect(@object.fizzbuzz(10)).to eq('buzz')
  end

  it 'returns "fizzbuzz" when argument is divisible by 3 and 5' do
    expect(@object.fizzbuzz(15)).to eq('fizzbuzz')
  end

  it 'returns the string of the number if none of the previous conditions are met' do
    expect(@object.fizzbuzz(7)).to eq('7')
  end
end
