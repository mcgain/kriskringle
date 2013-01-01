require 'spec_helper'

describe KringlesController do
  describe "create" do
    it "creates a kringle from params" do
      kringle = mock_model(Kringle)
      params =
      post "create", params
    end
  end
end

