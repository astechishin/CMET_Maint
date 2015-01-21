require 'spec_helper'

describe BallotsController do

  let(:valid_attributes) { {  } }

  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all ballots as @ballots" do
      ballot = Ballot.create! valid_attributes
      get :index, {}, valid_session
      assigns(:ballots).should eq([ballot])
    end
  end

  describe "GET show" do
    it "assigns the requested ballot as @ballot" do
      ballot = Ballot.create! valid_attributes
      get :show, {:id => ballot.to_param}, valid_session
      assigns(:ballot).should eq(ballot)
    end
  end

  describe "GET new" do
    it "assigns a new ballot as @ballot" do
      get :new, {}, valid_session
      assigns(:ballot).should be_a_new(Ballot)
    end
  end

  describe "GET edit" do
    it "assigns the requested ballot as @ballot" do
      ballot = Ballot.create! valid_attributes
      get :edit, {:id => ballot.to_param}, valid_session
      assigns(:ballot).should eq(ballot)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Ballot" do
        expect {
          post :create, {:ballot => valid_attributes}, valid_session
        }.to change(Ballot, :count).by(1)
      end

      it "assigns a newly created ballot as @ballot" do
        post :create, {:ballot => valid_attributes}, valid_session
        assigns(:ballot).should be_a(Ballot)
        assigns(:ballot).should be_persisted
      end

      it "redirects to the created ballot" do
        post :create, {:ballot => valid_attributes}, valid_session
        response.should redirect_to(Ballot.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved ballot as @ballot" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ballot.any_instance.stub(:save).and_return(false)
        post :create, {:ballot => {  }}, valid_session
        assigns(:ballot).should be_a_new(Ballot)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ballot.any_instance.stub(:save).and_return(false)
        post :create, {:ballot => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested ballot" do
        ballot = Ballot.create! valid_attributes
        # Assuming there are no other ballots in the database, this
        # specifies that the Ballot created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Ballot.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => ballot.to_param, :ballot => { "these" => "params" }}, valid_session
      end

      it "assigns the requested ballot as @ballot" do
        ballot = Ballot.create! valid_attributes
        put :update, {:id => ballot.to_param, :ballot => valid_attributes}, valid_session
        assigns(:ballot).should eq(ballot)
      end

      it "redirects to the ballot" do
        ballot = Ballot.create! valid_attributes
        put :update, {:id => ballot.to_param, :ballot => valid_attributes}, valid_session
        response.should redirect_to(ballot)
      end
    end

    describe "with invalid params" do
      it "assigns the ballot as @ballot" do
        ballot = Ballot.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Ballot.any_instance.stub(:save).and_return(false)
        put :update, {:id => ballot.to_param, :ballot => {  }}, valid_session
        assigns(:ballot).should eq(ballot)
      end

      it "re-renders the 'edit' template" do
        ballot = Ballot.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Ballot.any_instance.stub(:save).and_return(false)
        put :update, {:id => ballot.to_param, :ballot => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end
end
