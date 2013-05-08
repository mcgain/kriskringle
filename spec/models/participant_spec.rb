require 'spec_helper'

describe Participant do
  it { should belong_to(:kringle) }
  it { should belong_to(:user) }
  it { should belong_to(:mcgarglefurgle) }
end
