require 'spec_helper'

describe "code_values/edit" do
  before(:each) do
    @code_value = assign(:code_value, stub_model(CodeValue))
  end

  it "renders the edit code_value form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", code_value_path(@code_value), "post" do
    end
  end
end
