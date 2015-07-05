require 'spec_helper'

describe "ballots/show" do
  before(:each) do
    @ballot = assign(:ballot, stub_model(Ballot))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
