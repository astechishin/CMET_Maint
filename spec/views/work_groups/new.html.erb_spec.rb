require 'spec_helper'

describe "work_groups/new" do
  before(:each) do
    assign(:work_group, stub_model(WorkGroup).as_new_record)
  end

  it "renders new work_group form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", work_groups_path, "post" do
    end
  end
end
