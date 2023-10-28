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
end
