require 'spec_helper'

describe Kringle do
  it { should respond_to(:kringlehead) }
  it { should have_many(:users) }
  it { should have_many(:participants) }
end

