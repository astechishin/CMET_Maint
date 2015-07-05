require 'spec_helper'

describe "work_groups/index" do
  before(:each) do
    assign(:work_groups, [
      stub_model(WorkGroup),
      stub_model(WorkGroup)
    ])
  end

  it "renders a list of work_groups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
