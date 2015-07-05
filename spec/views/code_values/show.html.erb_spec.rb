require 'spec_helper'

describe "code_values/show" do
  before(:each) do
    @code_value = assign(:code_value, stub_model(CodeValue))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
