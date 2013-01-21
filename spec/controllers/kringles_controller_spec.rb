require 'spec_helper'

describe KringlesController do
  describe "create" do
    it "creates a kringle from params" do
      user = mock_model(User)
      User.should_receive(:new).and_return(user)
      kringle = mock_model(Kringle)
      Kringle
        .should_receive(:new)
        .with(kringlehead: user)
        .and_return(kringle)

      params = {user:
          {email:
            "example@example.com",
            password: "password"
          },
          participants: "foo@foo.com"
      }

      post "create", params
      flash.now[:message].should_not be_nil
      response.should render_template("show")
      assigns(:kringle).should == kringle
    end
  end

  it "filters parameters to prevent mass-assignment security" do


  end

end

