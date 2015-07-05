require 'spec_helper'

describe "ballots/index" do
  before(:each) do
    assign(:ballots, [
      stub_model(Ballot),
      stub_model(Ballot)
    ])
  end

  it "renders a list of ballots" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
