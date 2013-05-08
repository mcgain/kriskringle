require 'spec_helper'

describe KringlesController do
  describe "create" do
    context "logged in user" do
      login_user

      it "creates a kringle for that user" do
        kringle = mock_model(Kringle)
        kringle.should_receive(:add_participants).with(
          "bob@example.com, fred@example.com")
        kringle.should_receive(:save!)

        user = subject.current_user
        Kringle
          .should_receive(:new)
          .with(kringlehead: user)
          .and_return(kringle)

        params = { participants: "bob@example.com, fred@example.com" }
        post "create", params
        response.should render_template("show")
        assigns(:kringle).should == kringle
      end
    end
  end

  it "filters parameters to prevent mass-assignment security" do
  end

end

