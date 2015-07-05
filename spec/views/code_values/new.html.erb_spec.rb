require 'spec_helper'

describe "code_values/new" do
  before(:each) do
    assign(:code_value, stub_model(CodeValue).as_new_record)
  end

  it "renders new code_value form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", code_values_path, "post" do
    end
  end
end
