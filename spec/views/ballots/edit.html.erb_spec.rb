require 'spec_helper'

describe "ballots/edit" do
  before(:each) do
    @ballot = assign(:ballot, stub_model(Ballot))
  end

  it "renders the edit ballot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ballot_path(@ballot), "post" do
    end
  end
end
