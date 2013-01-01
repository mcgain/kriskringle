require 'spec_helper'

describe Kringle do
  it { should respond_to(:kringlehead) }
  it { should have_and_belong_to_many(:users) }
end

