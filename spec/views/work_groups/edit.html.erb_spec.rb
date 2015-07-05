require 'spec_helper'

describe "work_groups/edit" do
  before(:each) do
    @work_group = assign(:work_group, stub_model(WorkGroup))
  end

  it "renders the edit work_group form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", work_group_path(@work_group), "post" do
    end
  end
end
