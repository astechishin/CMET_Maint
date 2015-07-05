require 'spec_helper'

describe "work_groups/show" do
  before(:each) do
    @work_group = assign(:work_group, stub_model(WorkGroup))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
